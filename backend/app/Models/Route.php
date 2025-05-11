<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Route extends Model
{
    use HasFactory;

    protected $fillable = [
        'origin',
        'destination',
        'price',
        'distance_km',
        'travel_time',
        'route_code',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'price'        => 'decimal:2',
        'distance_km'  => 'integer',
        'travel_time'  => 'string',
    ];

}
