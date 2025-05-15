<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Str;

Route::get('/', function () {
    $apiV1 = collect(Route::getRoutes())
        ->map(fn($route) => [
            'methods' => $route->methods(),
            'uri'     => $route->uri(),
            'name'    => $route->getName(),
            'action'  => $route->getActionName(),
        ])
        ->filter(fn($r) => Str::startsWith($r['uri'], 'api/v1/'))
        ->values();

    $grouped = $apiV1->groupBy(function($r) {
        $after = Str::after($r['uri'], 'v1/');
        return Str::before($after, '/') ?: 'root';
    });

    return view('welcome', ['grouped' => $grouped]);
});
