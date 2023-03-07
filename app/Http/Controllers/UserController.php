<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\User;
use Illuminate\Auth\RequestGuard;
// use App\Http\Controllers\Auth\RegisteredUserController;
use Illuminate\Validation\Rules;
use Illuminate\Support\Facades\Hash;
// use Image;
use Intervention\Image\Facades\Image as Image;
use Intervention\Image\ImageManagerStatic;
use Illuminate\Support\Facades\Auth;
use App\Http\Middleware;
use App\Http\Middleware\Authenticate;

// use Auth;

// use Faker\Provider\Image;


class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }


    public function myprofile(Request $request)
    {
        $id = Auth::user()->id;
        // $id = 1;
        $users = User::find($id);

        // $users=Auth::guard('id')->user();
        return response()->json([

            'userrs'  => $users,

        ], 200);
    }


    public function myprofile_update(Request $request)
    {

        // $id = 1;
        $id = Auth::user()->id;
        $user = User::find($id);

        $user->name = $request->name;
        $user->mname = $request->mname;


        if ($user->photo != $request->photo) {
            $strpos = strpos($request->photo, ';');
            $sub = substr($request->photo, 0, $strpos);
            $ex = explode('/', $sub)[1];
            $name = time() . "." . $ex;
            $img = Image::make($request->photo)->resize(200, 200);
            $upload_path = public_path() . "/upload/";
            $image = $upload_path . $user->photo;
            $img->save($upload_path . $name);
            if (file_exists($image)) {
                @unlink($image);
            }
        } else {
            $name = $user->photo;
        }
        $user->photo = $name;

        $user->lname = $request->lname;
        $user->year = $request->year;
        $user->gender = $request->gender;
        $user->uid = $request->uid;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->save();
    }

    public function get_all_user()
    {
        $users = User::all();
        return response()->json(
            [
                'userrs'  => $users,
            ],
            200
        );
    }
    public function get_one_user($id)
    {
        // $users = User::all();
        $userrole = User::find($id);
        return response()->json(
            [
                'userrs'  => $userrole,
            ],
            200
        );
    }
    // //This will get all members of a team that belongs to any role
    // $team  = Team::where('name', $id)->first();
    // $roles = Role::get();
    // $users = User::whereRoleIs($roles->pluck('name')->toArray(), $team)->get();

    // //This will get all members of a team with a specific role
    // $team  = Team::where('name', $id)->first();
    // $users = User::whereRoleIs(['Admin'], $team)->get();

    public function get_all_student_user()
    {
        $sortdata = 'name';
        
        $students = User::orderBy($sortdata, "asc")->whereRoleIs(['student'])->get();

        return response()->json(
            [
                'students'  => $students,
            ],
            200
        );
    }

    public function get_all_student_search(Request $request)
    {

        $data = $request->searching;

        if (User::search($data)->where('role_num', 1)->get() != null && User::search($data)->where('role_num', 1)->get() != "") {
            $students = User::search($data)->where('role_num', 1)->get();
            return response()->json(
                [
                    'students'  => $students,
                ],
                200
            );
        }else{
            // $students = User::orderBy('nccame', "asc")->where('role_num', 1)->get();
            $students = User::whereRoleIs(['student'])->get();
            return response()->json(
                [
                    'students'  => $students,
                ],
                200
            );
        }
    }


    public function get_all_student_sort(Request $request)
    {

        $sortdata = $request->sorting;
        // $sortdata = 'name';
        if (($sortdata == "name" || $sortdata == "mname" || $sortdata == "lname" || $sortdata == "email"|| $sortdata == "year")) {
            // $capstone = Topic::orderBy($sortdata, "asc")->get();
            $students = User::orderBy($sortdata, "asc")->where('role_num', 1)->get();
            return response()->json(
                [
                    'students'  => $students,
                ],
                200
            );
        } else {
            // $capstone = Topic::all();
            $students = User::whereRoleIs(['student'])->get();
            return response()->json(
                [
                    'students'  => $students,
                ],
                200
            );
        }
    }




    public function get_all_faculty_search(Request $request)
    {

        $data = $request->searching;

        if (User::search($data)->where('role_num', 2)->get() != null && User::search($data)->where('role_num', 2)->get() != "") {
            $students = User::search($data)->where('role_num', 2)->get();
            return response()->json(
                [
                    'facultys'  => $students,
                ],
                200
            );
        }else{
            // $students = User::whereRoleIs(['faculty'])->get();
            $students = User::orderBy('name', "asc")->where('role_num', 2)->get();
            return response()->json(
                [
                    'facultys'  => $students,
                ],
                200
            );
        }
    }
    public function get_all_faculty_sort(Request $request)
    {
        $sortdata = $request->sorting;
        if (($sortdata == "name" || $sortdata == "mname" || $sortdata == "lname" || $sortdata == "email"|| $sortdata == "year")) {
            // $capstone = Topic::orderBy($sortdata, "asc")->get();
            $students = User::orderBy($sortdata, "asc")->where('role_num', 2)->get();
            return response()->json(
                [
                    'facultys'  => $students,
                ],
                200
            );
        } else {
            // $capstone = Topic::all();
            $students = User::whereRoleIs(['faculty'])->get();
            // $students = User::orderBy($sortdata, 'name')->where('role_num', 2)->get();
            return response()->json(
                [
                    'facultys'  => $students,
                ],
                200
            );
        }
    }





    public function get_all_admin_search(Request $request)
    {

        $data = $request->searching;

        if (User::search($data)->where('role_num', 3)->get() != null && User::search($data)->where('role_num', 3)->get() != "") {
            $students = User::search($data)->where('role_num', 3)->get();
            return response()->json(
                [
                    'admin'  => $students,
                ],
                200
            );
        }else{
            // $students = User::whereRoleIs(['faculty'])->get();
            $students = User::orderBy('name', "asc")->where('role_num', 3)->get();
            return response()->json(
                [
                    'admin'  => $students,
                ],
                200
            );
        }
    }
    public function get_all_admin_sort(Request $request)
    {
        $sortdata = $request->sorting;
        if (($sortdata == "name" || $sortdata == "mname" || $sortdata == "lname" || $sortdata == "email"|| $sortdata == "year")) {
            // $capstone = Topic::orderBy($sortdata, "asc")->get();
            $students = User::orderBy($sortdata, "asc")->where('role_num', 3)->get();
            return response()->json(
                [
                    'admin'  => $students,
                ],
                200
            );
        } else {
            // $capstone = Topic::all();
            $students = User::whereRoleIs(['faculty'])->get();
            // $students = User::orderBy($sortdata, 'name')->where('role_num', 2)->get();
            return response()->json(
                [
                    'admin'  => $students,
                ],
                200
            );
        }
    }
   




    public function get_all_archiver_user()
    {
        $archivers = User::whereRoleIs(['archiver'])->get();
        return response()->json(
            [
                'archivers'  => $archivers,
            ],
            200
        );
    }

    public function get_all_faculty_user()
    {
        $facultys = User::whereRoleIs(['faculty'])->get();
        return response()->json(
            [
                'facultys'  => $facultys,
            ],
            200
        );
    }
    public function get_all_admin_user()
    {
        $admin = User::whereRoleIs(['administrator'])->get();
        return response()->json(
            [
                'admins'  => $admin,
            ],
            200
        );
    }
    public function get_all_panel_user()
    {
        $panel = User::whereRoleIs(['panel'])->get();
        return response()->json(
            [
                'panels'  => $panel,
            ],
            200
        );
    }
    public function get_all_secretary_user()
    {
        $secretary = User::whereRoleIs(['secretary'])->get();
        return response()->json(
            [
                'secretarys'  => $secretary,
            ],
            200
        );
    }
    public function get_all_adviser_user()
    {
        $adviser = User::whereRoleIs(['adviser'])->get();
        return response()->json(
            [
                'advisers'  => $adviser,
            ],
            200
        );
    }
    public function get_all_instructor_user()
    {
        $sortdata= 'name';
    
        $instructor = User::orderBy($sortdata, "asc")->whereRoleIs(['instructor'])->get();


        return response()->json(
            [
                'instructors'  => $instructor,
            ],
            200
        );
    }

    // public function get_all_panel_user()
    // {

    //     $panel  = Facultys::where('panel', 1)->first();
    //     $panelist = User::whereRoleIs(['faculty'], $panel)->get(); 

    //     return response()->json(
    //         [
    //             'panelist'  => $panelist,
    //         ],
    //         200
    //     );
    // }






    public function add_user(Request $request)
    {

        // $request->validate([
        //     'year' => ['required', 'string', 'max:255'],
        //     'name' => ['required', 'string', 'max:255'],

        //     'mname' => ['required', 'string', 'max:255'],
        //     'lname' => ['required', 'string', 'max:255'],
        //     'uid' => ['required', 'string', 'max:255'],
        //     'gender' => ['required', 'string', 'max:255'],
        //     'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
        //     // 'password' => ['required', 'confirmed', Rules\Password::defaults()],
        //     // 'photo'         =>  'required|image|mimes:jpg,png,jpeg,gif,svg|max:2048|dimensions:min_width=100,min_height=100,max_width=1000,max_height=1000'
        // ]);
        // $file_name = time() . '.' . request()->photo->getClientOriginalExtension();
        // request()->photo->move(public_path('upload'), $file_name);


        // $user = User::create([
        //     'year' => $request->year,
        //     'name' => $request->name,
        //     'mname' => $request->mname,
        //     'lname' => $request->lname,
        //     'uid' => $request->uid,
        //     'email' => $request->email,
        //     'gender' => $request->gender,
        //     'password' => Hash::make($request->password),
        //     'photo' => $request->file_name,
        //     // $student->student_gender = $request->student_gender;
        //     // $student->student_image = $file_name;
        // ]);
        // $user->attachRole('student');



        $user = new User();

        $user->name = $request->name;
        $user->mname = $request->mname;

        if ($request->photo != '0') {
            $strpos = strpos($request->photo, ';');
            $sub = substr($request->photo, 0, $strpos);
            $ex = explode('/', $sub)[1];
            $name = time() . "." . $ex;
            $img = Image::make($request->photo)->resize(200, 200);
            $upload_path = public_path() . "/upload/";
            $img->save($upload_path . $name);
            $user->photo = $name;
        } else {
            $user->photo = "the_avatar.jpeg";
        }

        

        $user->lname = $request->lname;
        $user->year = $request->year;
        $user->gender = $request->gender;
        $user->uid = $request->uid;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);

        if ($request->usertype == 'student') {
            $user->role_num = 1;
        }
        if ($request->usertype == 'faculty') {
            $user->role_num = 2;
        }
        if ($request->usertype == 'administrator') {
            $user->role_num = 3;
        }


        $user->save();

        if ($request->usertype == 'faculty') {
            $user->attachRoles(['secretary', 'panel', 'faculty', 'instructor', 'adviser']);
        } else {
            $user->attachRole($request->usertype);
        }
        // $user->attachRole($request->usertype);
    }



    public function get_edit_user($id)
    {
        $users = User::find($id);
        return response()->json([

            'userrs'  => $users,

        ], 200);
    }




    // public function update_user(Request $request, $id){
    //     $data = $request->validate([
    //         'year' => '',
    //         'name' => '',
    //         'mname' => '',
    //         'email' => '',
    //         'password' => '',
    //         'lname' => '',
    //         'uid' => '',
    //         'gender' => '',
    //         'companyRole' => '',
    //     ]);
    //     $input = $request->all();
    //     $user = User::findOrFail($id);
    //     $user->update($input);
    //     $user->save();
    //     return $user;
    // }



    public function update_user(Request $request, $id)
    {
        $user = User::find($id);

        $user->name = $request->name;
        $user->mname = $request->mname;


        if ($user->photo != $request->photo) {
            $strpos = strpos($request->photo, ';');
            $sub = substr($request->photo, 0, $strpos);
            $ex = explode('/', $sub)[1];
            $name = time() . "." . $ex;
            $img = Image::make($request->photo)->resize(200, 200);
            $upload_path = public_path() . "/upload/";
            $image = $upload_path . $user->photo;
            $img->save($upload_path . $name);
            if (file_exists($image)) {
                @unlink($image);
            }
        } else {
            $name = $user->photo;
        }
        $user->photo = $name;

        $user->lname = $request->lname;
        $user->year = $request->year;
        $user->gender = $request->gender;
        $user->uid = $request->uid;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->save();
    }

    public function delete_user($id)
    {
        $user = User::findOrFail($id);
        $image_path = public_path() . "/upload/";
        $image = $image_path . $user->photo;
        if (file_exists($image)) {
            @unlink($image);
        }
        $user->delete();
    }
}