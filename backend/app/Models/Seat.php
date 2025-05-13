<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Seat extends Model
{
    protected $fillable = ['seat_number', 'bus_id'];

    public function bus()
    {
        return $this->belongsTo(Bus::class);
    }

}
