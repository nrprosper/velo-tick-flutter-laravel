<?php

namespace App\Http\Controllers;

use App\Models\Route;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class LocationsController extends Controller
{
    public function getOrigins(): JsonResponse
    {
        $origins = Route::select('origin')
            ->distinct()
            ->orderBy('origin')
            ->pluck('origin');

        return response()->json($origins);
    }

    public function getDestinations(): JsonResponse
    {
        $destinations = Route::select('destination')
            ->distinct()
            ->orderBy('destination')
            ->pluck('destination');

        return response()->json($destinations);
    }

}
