<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class SingleScheduleResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'bus' => $this->bus->plate_number,
            'origin' => $this->route->origin,
            'destination' => $this->route->destination,
            'departure_time' => $this->departure_time,
            'arrival_time' => $this->arrival_time,
            'total_seats' => $this->bus->seats->count(),
            'price' => $this->route->price,
            'available_seats' => $this->seatAvailabilities->where('is_booked', false)->count(),
            'availabilities' => $this->seatAvailabilities->map(function ($seatAvailability) {
                return [
                    'seat_id' => $seatAvailability->seat_id,
                    'seat_number' => $seatAvailability->seat->seat_number,
                    'is_booked' => $seatAvailability->is_booked,
                ];
            }),
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at
        ];
    }
}
