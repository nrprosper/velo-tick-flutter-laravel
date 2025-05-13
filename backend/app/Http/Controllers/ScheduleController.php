<?php

namespace App\Http\Controllers;

use App\Http\Resources\ScheduleResource;
use App\Http\Resources\SingleScheduleResource;
use App\Models\Schedule;
use Carbon\Carbon;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\ResourceCollection;
use Illuminate\Support\Facades\Cache;
use Illuminate\Validation\ValidationException;

class ScheduleController extends Controller
{

    public function store(Request $request)
    {
        $this->validate($request, [
            'bus_id' => 'required|integer|exists:buses,id',
            'route_id' => 'required|integer|exists:routes,id',
            'departure_time' => 'required|date',
            'arrival_time' => 'required|date|after:departure_time'
        ]);

        $schedule = Schedule::create($request->only(['bus_id', 'route_id', 'departure_time', 'arrival_time']));

        return response()->json($schedule);

    }

    /**
     * @throws \Throwable
     */
    public function all(Request $request): ResourceCollection
    {
        $per_page = $request->get('per_page', 10);
        $origin = $request->get('origin');
        $destination = $request->get('destination');
        $date = $request->get('date');

        $cacheKey = "schedules_cache_{$origin}_{$destination}_{$per_page}_{$date}";

        $schedules = Cache::remember($cacheKey, 60, function () use ($origin, $destination, $date, $per_page) {
            $query = Schedule::query()->with(['bus', 'route', 'seatAvailabilities']);

            if ($origin) {
                $query->whereHas('route', function ($q) use ($origin) {
                    $q->whereRaw('LOWER(origin) LIKE ?', ['%' . strtolower($origin) . '%']);
                });
            }

            if ($destination) {
                $query->whereHas('route', function ($q) use ($destination) {
                    $q->whereRaw('LOWER(destination) LIKE ?', ['%' . strtolower($destination) . '%']);
                });
            }

            if ($date) {

                $startOfDay = Carbon::parse($date)->startOfDay();
                $endOfDay = Carbon::parse($date)->endOfDay();

                $query->whereBetween('departure_time', [$startOfDay, $endOfDay]);
            }

            return $query->paginate($per_page);

        });

        return ScheduleResource::collection($schedules);
    }

    public function one(Request $request, Schedule $schedule) {
        return new SingleScheduleResource($schedule);
    }

    /**
     * @throws ValidationException
     */
    public function update(Request $request, Schedule $schedule): ScheduleResource
    {
        $this->validate($request, [
            'bus_id' => 'sometimes|integer|exists:buses,id',
            'route_id' => 'sometimes|integer|exists:routes,id',
            'departure_time' => 'sometimes|date',
            'arrival_time' => 'sometimes|date|after:departure_time'
        ]);

        $schedule->update($request->only([
            'bus_id',
            'route_id',
            'departure_time',
            'arrival_time'
        ]));

        Cache::forget("schedules_cache_{$schedule->route->origin}_{$schedule->route->destination}");

        return new ScheduleResource($schedule);

    }

    public function delete(Request $request, Schedule $schedule): JsonResponse {
        $schedule->delete();
        Cache::forget("schedules_cache_{$schedule->route->origin}_{$schedule->route->destination}");

        return response()->json(null, 204);
    }

}
