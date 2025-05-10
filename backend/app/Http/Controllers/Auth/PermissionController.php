<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Symfony\Component\HttpFoundation\Response as ResponseAlias;

class PermissionController extends Controller
{
    public function all():JsonResponse {
        $permissions = Permission::all();
        return response()->json($permissions);
    }

    public function store(Request $request): JsonResponse {
        $this->validate($request, [
            'name' => 'required|unique:permissions,name'
        ]);

        $permission = Permission::create(['name' => $request->input('name')]);
        return response()->json($permission);
    }

    public function destroy(Request $request, Permission $permission): JsonResponse {
        $roles = Role::all();
        foreach ($roles as $role) {
            $role->revokePermissionTo($permission);
        }

        $permission->delete();

        return response()->json([
            'message' => 'Permission deleted and revoked from all roles.'
        ], ResponseAlias::HTTP_NO_CONTENT);
    }

}
