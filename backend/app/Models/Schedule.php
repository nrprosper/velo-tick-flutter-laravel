<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    protected $fillable = ['bus_id', 'route_id', 'departure_time', 'arrival_time'];

    public function bus()
    {
        return $this->belongsTo(Bus::class);
    }

    public function route()
    {
        return $this->belongsTo(Route::class);
    }

    public function seatAvailabilities()
    {
        return $this->hasMany(SeatAvailability::class);
    }

    protected static function booted()
    {
        static::created(function ($schedule) {
            $bus = $schedule->bus;
            $seats = $bus->seats;
            $availabilities = [];
            foreach ($seats as $seat) {
                $availabilities[] = [
                    'schedule_id' => $schedule->id,
                    'seat_id' => $seat->id,
                    'is_booked' => false,
                    'created_at' => now(),
                    'updated_at' => now(),
                ];
            }
            SeatAvailability::insert($availabilities);
        });
    }
}
