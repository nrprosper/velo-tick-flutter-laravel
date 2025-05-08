<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Spatie\Permission\Models\Permission;

class PermissionController extends Controller
{
    public function all():JsonResponse {
        $permissions = Permission::all();
        return response()->json($permissions);
    }
}
