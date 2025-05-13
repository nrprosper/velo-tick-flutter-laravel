<?php

namespace App\Http\Controllers;

use App\Models\Bus;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;

class BusController extends Controller
{


    /**
     * @throws ValidationException
     */
    public function store(Request $request): JsonResponse
    {
        $this->validate($request, [
            'plate_number' => 'required|string|max:255|unique:buses,plate_number',
            'status' => 'sometimes|in:available,in_maintenance,active',
        ]);

        $data = $request->only(['plate_number', 'status']);
        $bus = Bus::create($data);

        return response()->json($bus, 201);
    }

    public function all(Request $request): JsonResponse
    {
        $query = Bus::query();

        if ($request->filled('status')) {
            $query->where('status', $request->get('status'));
        }

        if ($request->filled('plate_number')) {
            $query->where('plate_number', 'like', '%' . $request->get('plate_number') . '%');
        }

        $buses = $query->get();

        return response()->json($buses, 200);
    }


    public function one(Bus $bus): JsonResponse
    {
        $bus->load('seats');
        return response()->json($bus);
    }

    public function update(Request $request, Bus $bus): JsonResponse
    {
        $this->validate($request, [
            'plate_number' => 'sometimes|string|max:255|unique:buses,plate_number,' . $bus->id,
            'status' => 'sometimes|in:available,in_maintenance,active',
        ]);

        $data = $request->only(['plate_number', 'status']);
        $bus->update(array_filter($data, fn($value) => !is_null($value)));

        return response()->json($bus);
    }

    public function destroy(Bus $bus): JsonResponse
    {
        $bus->delete();
        return response()->json(null, 204);
    }


}
