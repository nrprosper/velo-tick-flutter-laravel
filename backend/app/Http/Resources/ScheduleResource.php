<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ScheduleResource extends JsonResource
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
            'price' => $this->route->price,
            'destination' => $this->route->destination,
            'departure_time' => $this->departure_time,
            'arrival_time' => $this->arrival_time,
            'total_seats' => $this->bus->seats->count(),
            'available_seats' => $this->seatAvailabilities->where('is_booked', false)->count(),
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at
        ];
    }
}
