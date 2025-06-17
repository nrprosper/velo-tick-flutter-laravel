<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Log;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{

    /**
     * @throws ValidationException
     */
    public function signup(Request $request): UserResource
    {
        $this->validate($request, [
            'firstname' => 'required|string|max:255',
            'lastname' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8|confirmed',
            'phone_number' => [
                'required',
                'string',
                'regex:/^\+\d{9,15}$/',
                'unique:users,phone_number',
            ],
            'nationality' => 'required|string',
        ]);

        $input = $request->all();
        $input['password'] = Hash::make($request->input('password'));

        $user = User::create($input);
        $user->assignRole('user');

        return UserResource::make($user);
    }


    /**
     * @throws ValidationException
     */
    public function login(Request $request): JsonResponse
    {
        $credentials = $request->validate([
            'email' => 'required|string|email|max:255',
            'password' => 'required|string'
        ]);

        $user = User::with(['roles', 'permissions'])
            ->where('email', $credentials['email'])
            ->first();

        if (! $user || ! Hash::check($credentials['password'], $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect.'],
            ]);
        }

        $token = $user->createToken('sanctum_auth_token')->plainTextToken;

        $userData = collect($user->toArray())
            ->except([
                'password',
                'email',
                'created_at',
                'updated_at',
                'remember_token',
                'password_reset_token',
                'password_reset_expirery',
            ])
            ->merge([
                'roles'       => $user->getRoleNames(),
                'permissions' => $user->getAllPermissions()->pluck('name'),
            ]);

        return response()->json([
            'token' => $token,
            'user'  => $userData,
        ]);

    }

    public function logout(Request $request): JsonResponse {
        $user = Auth::user();
        $user->currentAccessToken()->delete();
        return response()->json(['message' => 'Logged out successfully']);
    }

    public function me(): UserResource
    {
        $user = Auth::user();
        return new UserResource($user);
    }

    public function changePassword(Request $request): JsonResponse {
        $user = Auth::user();
        $this-> validate($request, [
            'current_password' => 'required|string',
            'new_password' => 'required|string|min:8|confirmed',
        ]);

        if (!Hash::check($request->current_password, $user->password)) {
            return response()->json(['error' => 'Current password is incorrect'], 401);
        }

        $user->password = Hash::make($request->new_password);
        $user->save();

        $user->tokens()->where('id', '!=', $request->user()->currentAccessToken()->id)->delete();

        return response()->json(['message' => 'Password updated successfully and other sessions have been logged out.']);

    }

}
