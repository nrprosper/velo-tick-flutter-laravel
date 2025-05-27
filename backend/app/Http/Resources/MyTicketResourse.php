<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class MyTicketResourse extends JsonResource
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
            'origin' => $this->schedule->route->origin,
            'destination' => $this->schedule->route->destination,
            'price' => $this->schedule->route->price,
            'seat_number' => $this->seat->seat_number,
            'distance' => $this->schedule->route->distance_km,
            'travel_time'=> $this->schedule->route->travel_time,
            'departure_time'=> $this->schedule->departure_time,
            'arrival_time'=> $this->schedule->arrival_time,
            'qr_code_url'=> $this->qr_code_url
        ];
    }
}
