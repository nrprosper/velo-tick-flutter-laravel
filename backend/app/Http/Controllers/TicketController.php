<?php

namespace App\Http\Controllers;

use App\Http\Resources\AllTicketsResource;
use App\Http\Resources\MyTicketResourse;
use App\Models\SeatAvailability;
use App\Models\Ticket;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class TicketController extends Controller
{
    public function buyTicket(Request $request): JsonResponse
    {
        $user = Auth()->user();
        $request->validate([
            'schedule_id' => 'required|exists:schedules,id',
            'seat_id' => 'required|exists:seats,id',
        ]);

        $schedule_id = $request->schedule_id;
        $seat_id = $request->seat_id;

        DB::beginTransaction();
        try {
            $seatAvailability = SeatAvailability::where('schedule_id', $schedule_id)
                ->where('seat_id', $seat_id)
                ->firstOrFail();

            if ($seatAvailability->is_booked) {
                throw new \Exception('Seat is already booked');
            }

            $ticket = new Ticket([
                'user_id' => $user->id,
                'schedule_id' => $schedule_id,
                'seat_id' => $seat_id,
            ]);
            $ticket->save();

            $seatAvailability->is_booked = true;
            $seatAvailability->save();

            $encryptedData = encrypt($ticket->id);
            $qrCode = QrCode::format('png')->size(300)->generate($encryptedData);
            $tempFilePath = tempnam(sys_get_temp_dir(), 'qrcode') . '.png';
            file_put_contents($tempFilePath, $qrCode);

            Log::info('Temp File Path: ' . $tempFilePath . ', Size: ' . filesize($tempFilePath));
            if (!file_exists($tempFilePath) || filesize($tempFilePath) == 0) {
                throw new \Exception('QR code file not created or is empty');
            }

            $uploadResult = Cloudinary::uploadApi($tempFilePath)
                ->upload($tempFilePath, [
                    'folder' => 'tickets',
                    // 'public_id' => 'ticket_'.$ticket->id,
                ]);

            Log::info('Upload Result: ' . json_encode($uploadResult));

            $qr_code_url = $uploadResult['secure_url'];
            $qr_code_public_id = $uploadResult['public_id'];

            Log::info('Cloudinary Upload Response: ' . json_encode($qr_code_url));

            if ($qr_code_url === null) {
                throw new \Exception('Cloudinary upload failed with no response');
            }

            $uploadedFileUrl = $qr_code_url;

            unlink($tempFilePath);

            $ticket->qr_code_url = $uploadedFileUrl;
            $ticket->qr_code_public_id = $qr_code_public_id;
            $ticket->save();

            DB::commit();
            return response()->json($ticket);
        } catch (\Exception $e) {
            DB::rollBack();
            if (isset($tempFilePath) && file_exists($tempFilePath)) {
                unlink($tempFilePath); // Clean up on failure
            }
            return response()->json(['error' => $e->getMessage()], 400);
        }
    }

    public function all(Request $request): AnonymousResourceCollection
    {
        $tickets = Ticket::all();
        return AllTicketsResource::collection($tickets);
    }

    public function myTickets(Request $request): AnonymousResourceCollection
    {
        $user = Auth()->user();
        $tickets = Ticket::with(['seat', 'schedule'])
            ->where('user_id', $user->id)
            ->latest()
            ->get();

        return MyTicketResourse::collection($tickets);
    }

    public function destroy(Request $request, Ticket $ticket): JsonResponse
    {
        $user = Auth()->user();
        DB::beginTransaction();
        if($ticket->qr_code_public_id) {
            try {
                Cloudinary::uploadApi()->destroy($ticket->qr_code_public_id);
            } catch (\Exception $e) {
                DB::rollBack();
                Log::error('Cloudinary deletion failed: ' . $e->getMessage());
            }
        }

        $ticket->delete();
        DB::commit();
        return response()->json(null, 204);
    }

}
