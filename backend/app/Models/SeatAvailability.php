<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SeatAvailability extends Model
{
    protected $fillable = ['schedule_id', 'seat_id', 'is_booked'];
    protected $casts = [
        'is_booked' => 'boolean',
    ];

    public function schedule()
    {
        return $this->belongsTo(Schedule::class);
    }

    public function seat()
    {
        return $this->belongsTo(Seat::class);
    }
}
