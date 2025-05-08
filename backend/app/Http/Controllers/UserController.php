<?php

namespace App\Http\Controllers;

use App\Http\Resources\UserResource;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Http\Resources\Json\ResourceCollection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class UserController extends Controller
{

    /**
     * @throws ValidationException
     */
    public function store(Request $request): JsonResponse
    {
        $this->validate($request, [
            'firstname' => 'required|string|max:255',
            'lastname' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8|confirmed',
            'phone_number' => 'required|string',
            'nationality' => 'required|string',
            'role' => 'required'
        ]);

        $input = $request->except('role');
        $input['password'] = Hash::make($request->input('password'));
        $user = User::create($input);
        $user->assignRole($request->input('role'));

        return response()->json($user, 201);

    }


    public function all(Request $request): ResourceCollection
    {
        return User::all()->toResourceCollection();
    }

    public function one(User $user): JsonResource
    {
        return $user->toResource();
    }

    public function destroy(User $user): JsonResponse
    {
        $authUser = Auth::user();

        if (!$authUser->hasRole('admin') && $authUser->id !== $user->id) {
            return response()->json(['error' => 'Unauthorized to delete this user'], 403);
        }

        $user->delete();
        return response()->json(['message' => 'User deleted successfully']);

    }

    /**
     * @throws ValidationException
     */
    public function update(Request $request, User $user): UserResource|JsonResponse
    {
        $authUser = Auth::user();

        if (!$authUser->hasRole('admin') && $authUser->id !== $user->id) {
            return response()->json(['error' => 'Unauthorized to update this user'], 403);
        }

        $this->validate($request, [
            'firstname' => 'sometimes|string|max:255',
            'lastname' => 'sometimes|string|max:255',
            'email' => 'sometimes|string|email|max:255|unique:users,email,' . $user->id,
            'phoneNumber' => 'sometimes|string',
            'nationality' => 'sometimes|string',
        ]);

        $user->fill($request->only([
            'firstname',
            'lastname',
            'email',
            'phoneNumber',
            'nationality',
        ]));

        $user->save();

        return UserResource::make($user);


    }

}
