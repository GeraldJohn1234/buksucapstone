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

        // $user = User::create([
        //     'name' => $request->name,
        //     'mname' => $request->mname,
        //     'lname' => $request->lname,
        //     'uid' => $request->uid,
        //     'year' => 'not set',
        //     'gender' => 'not set',
        //     'email' => $request->email,
        //     'password' => Hash::make($request->password),


           
        // ]);
        // if ($request->usertype == 'student') {
        //     // $user->attachRoles(['administrator', 'student', 'faculty', 'archiver']);
        //     'remember_token' => 1,
        // }
        

 

        $user = new User();

        $user->name = $request->name;
        $user->mname = $request->mname;
        $user->lname = $request->lname;
        
        $user->year = 'not set';
        $user->gender = 'not set';

        $user->uid = $request->uid;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);

        if ($request->role_id == 'student') {
            $user->role_num = 1;
        }
        if ($request->role_id == 'faculty') {
            $user->role_num = 2;
        }


        $user->save();

        // if ($request->usertype == 'faculty') {
        //     $user->attachRoles(['secretary', 'panel', 'faculty', 'instructor', 'adviser']);
        // } else {
        //     $user->attachRole($request->usertype);
        // }

        if ($request->usertype == 'faculty') {
            // $user->attachRoles(['administrator', 'student', 'faculty', 'archiver']);
            $user->role_num = 2;
            $user->attachRoles(['secretary', 'panel', 'faculty', 'instructor', 'adviser']);
        } else if($request->usertype == 'student'){
            $user->role_num = 1;
            $user->attachRole ($request->usertype);
        } else if($request->usertype == 'administrator'){
            $user->role_num = 3;
            $user->attachRole ($request->usertype);

        }
        $user->attachRole($request->role_id);




        // $user->attachRole('administrator');
        event(new Registered($user));

        Auth::login($user);

        return redirect(RouteServiceProvider::HOME);
    }
}