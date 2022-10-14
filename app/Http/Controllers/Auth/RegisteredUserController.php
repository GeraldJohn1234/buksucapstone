<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;

class RegisteredUserController extends Controller
{
    //     public function __construct()
    // {
    //     $this->middleware('auth');
    // }
    /**
     * Display the registration view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],

            'mname' => ['required', 'string', 'max:255'],
            'lname' => ['required', 'string', 'max:255'],
            'uid' => ['required', 'string', 'max:255'],

            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
        ]);

        $user = User::create([
            'name' => $request->name,

            'mname' => $request->mname,
            'lname' => $request->lname,
            'uid' => $request->uid,
            'year' => $request->uid,
            'gender' => $request->uid,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        


        if ($request->usertype == 'faculty') {
            $user->attachRoles(['administrator', 'student', 'faculty', 'archiver']);
        } else {
            $user->attachRole ($request->usertype);
        }
        $user->attachRole($request->role_id);
        // $user->attachRole('administrator');
        event(new Registered($user));



        Auth::login($user);

        return redirect(RouteServiceProvider::HOME);
    }
}