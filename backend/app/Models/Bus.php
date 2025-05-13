<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bus extends Model
{
    protected $fillable = ['plate_number', 'status'];

    public function seats()
    {
        return $this->hasMany(Seat::class);
    }

    protected static function booted()
    {
        static::created(function ($bus) {
            $seats = [];
            $columns = [
                'A' => 12,
                'B' => 12,
                'C' => 1,
                'D' => 12,
                'E' => 13,
            ];
            foreach ($columns as $column => $count) {
                for ($i = 1; $i <= $count; $i++) {
                    $seats[] = [
                        'seat_number' => $column . $i,
                        'bus_id' => $bus->id,
                        'created_at' => now(),
                        'updated_at' => now(),
                    ];
                }
            }
            Seat::insert($seats);
        });
    }
}
