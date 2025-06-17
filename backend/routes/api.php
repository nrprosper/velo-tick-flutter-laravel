<?php

use App\Http\Controllers\Auth\PermissionController;
use App\Http\Controllers\Auth\RoleController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BusController;
use App\Http\Controllers\LocationsController;
use App\Http\Controllers\RouteController;
use App\Http\Controllers\ScheduleController;
use App\Http\Controllers\TicketController;
use App\Http\Controllers\UserController;
use App\Mail\TrialEmail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Route;


Route::prefix('v1') -> group(function () {

    Route::get('/', function () {
        return 'Welcome to Velo-Tick API - This API is designed to streamline transportation ticket booking and management.';
    });

    // Roles and Permissions Management
    Route::middleware(['auth:sanctum','role:admin'])->group(function () {
        Route::get('/roles', [RoleController::class, 'all']);
        Route::post('/roles', [RoleController::class, 'store']);

        Route::get('/permissions', [PermissionController::class, 'all']);
        Route::post('/permissions', [PermissionController::class, 'store']);
        Route::delete('/permissions/{permission}', [PermissionController::class, 'destroy']);
    });

    // User Management Routes
    Route::middleware(['auth:sanctum'])->group(function () {
        Route::post('/users', [UserController::class, 'store']);
        Route::get('/users', [UserController::class, 'all']);
        Route::get('/users/role-stats', [UserController::class, 'roleStats']);
        Route::get('/users/{user}', [UserController::class, 'one']);
        Route::delete('/users/{user}', [UserController::class, 'destroy']);
        Route::patch('/users/{user}', [UserController::class, 'update']);
    });


    // Authentication routes
    Route::prefix("/auth") -> group(function () {
        Route::post('/sign-up', [AuthController::class, 'signUp']);
        Route::post('/login', [AuthController::class, 'login']);
        Route::post('/change-password', [AuthController::class, 'changePassword'])->middleware('auth:sanctum');
        Route::get('/me', [AuthController::class, 'me'])->middleware('auth:sanctum');
        Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');
    });


    // Bus Management Routes
    Route::middleware(['auth:sanctum'])->group(function () {
        Route::post('/buses', [BusController::class, 'store']);
        Route::get('/buses', [BusController::class, 'all']);
        Route::get('/buses/stats', [BusController::class, 'busStatusStats']);
        Route::get('/buses/{bus}', [BusController::class, 'one']);
        Route::delete('/buses/{bus}', [BusController::class, 'destroy']);
        Route::patch('/buses/{bus}', [BusController::class, 'update']);
    });


    // Routes Management endpoints
    Route::middleware(['auth:sanctum'])->group(function () {
        Route::post('/routes', [RouteController::class, 'store']);
        Route::get('/routes', [RouteController::class, 'all']);
        Route::get('/routes/{route}', [RouteController::class, 'one']);
        Route::patch('/routes/{route}', [RouteController::class, 'update']);
        Route::delete('/routes/{route}', [RouteController::class, 'destroy']);
    });


    // Schedule Management Routes
    Route::middleware(['auth:sanctum'])->group(function () {
        Route::post('/schedules', [ScheduleController::class, 'store']);
        Route::get('/schedules/{schedule}', [ScheduleController::class, 'one']);
        Route::patch('/schedules/{schedule}', [ScheduleController::class, 'update']);
        Route::delete('/schedules/{schedule}', [ScheduleController::class, 'destroy']);
    });


    Route::middleware(['auth:sanctum'])->group(function () {
        Route::get('/tickets', [TicketController::class, 'all']);
        Route::post('/tickets/buy', [TicketController::class, 'buyTicket']);
        Route::get('/tickets/mytickets', [TicketController::class, 'myTickets']);
        Route::delete('/tickets/{ticket}', [TicketController::class, 'destroy']);
        Route::post('/tickets/verify', [TicketController::class, 'verifyTicket']);
    });

    Route::get('/schedules', [ScheduleController::class, 'all']);

    Route::prefix('locations')->group(function () {
        Route::get('/origins', [LocationsController::class, 'getOrigins']);
        Route::get('/destinations', [LocationsController::class, 'getDestinations']);
    });

});
