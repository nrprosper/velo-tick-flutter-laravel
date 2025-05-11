<?php

namespace App\Http\Controllers;

use App\Models\Route;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class RouteController extends Controller
{
    public function store(Request $request): JsonResponse {

        $this->validate($request, [
            'origin'       => 'required|string|max:100',
            'destination'  => 'required|string|max:100',
            'price'        => 'required|numeric',
            'distance_km'  => 'required|integer',
            'travel_time'  => 'required|date_format:H:i:s',
        ]);

        $originCode = strtoupper(substr($request->origin, 0, 3));
        $destCode   = strtoupper(substr($request->destination, 0, 3));

        $existingCount = Route::where('origin', $request->origin)
            ->where('destination', $request->destination)
            ->count();
        $sequence = str_pad($existingCount + 1, 3, '0', STR_PAD_LEFT);

        $routeCode = "{$originCode}-{$destCode}-{$sequence}";

        $data = $request->only([
                'origin',
                'destination',
                'price',
                'distance_km',
                'travel_time',
            ]) + ['route_code' => $routeCode];

        $route = Route::create($data);
        Cache::forget('routes_cache');

        return response()->json($route, 201);

    }


    public function all(Request $request): JsonResponse {
        $perPage = $request->get('per_page', 10);
        $origin = $request->get('origin');
        $destination = $request->get('destination');

        $cacheKey = "routes_cache_{$origin}_{$destination}_{$perPage}";

        $routes = Cache::remember($cacheKey, 60, function () use ($origin, $destination, $perPage) {
            $query = Route::query();

            if ($origin) {
                $query->where('origin', 'LIKE', $origin);
            }

            if ($destination) {
                $query->where('destination', 'LIKE', $destination);
            }

            return $query->paginate($perPage);
        });

        return response()->json($routes, 200);
    }

    public function one(Route $route): JsonResponse {
        return response()->json($route);
    }

    public function update(Request $request, Route $route): JsonResponse {
        $this->validate($request, [
            'origin'       => 'sometimes|string|max:100',
            'destination'  => 'sometimes|string|max:100',
            'price'        => 'sometimes|numeric',
            'distance_km'  => 'sometimes|integer',
            'travel_time'  => 'sometimes|date_format:H:i:s',
        ]);

        $route->update($request->only([
            'origin',
            'destination',
            'price',
            'distance_km',
            'travel_time'
        ]));

        Cache::forget('routes_cache');

        return response()->json($route);
    }

    public function destroy(Route $route): JsonResponse {
        $route->delete();

        Cache::forget('routes_cache');

        return response()->json(null, 204);
    }

}
