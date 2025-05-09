<?php

use App\Http\Controllers\Auth\PermissionController;
use App\Http\Controllers\Auth\RoleController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;


Route::prefix('v1') -> group(function () {

    Route::get('/', function () {
        return 'Welcome to Velo-Tick API - This API is designed to streamline transportation ticket booking and management.';
    });

    // Roles and Permissions Management
    Route::middleware(['auth:sanctum','role:admin'])->group(function () {
        Route::get('/roles', [RoleController::class, 'all']);
        Route::get('/permissions', [PermissionController::class, 'all']);
    });

    // User Management Routes
    Route::middleware(['auth:sanctum'])->group(function () {
        Route::post('/users', [UserController::class, 'store']);
        Route::get('/users', [UserController::class, 'all']);
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

});
