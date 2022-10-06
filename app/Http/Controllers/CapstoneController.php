<?php

namespace App\Http\Controllers;

use App\Models\Caps1rating;
use App\Models\Caps2rating;
use App\Models\Caps3rating;
use Illuminate\Http\Request;
use App\Models\Capstone;
use App\Models\Capstone1;
use App\Models\Capstone2;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use App\Models\Capstone3;
use App\Models\Capstonedashboard;
use Illuminate\Support\Facades\Auth;

class CapstoneController extends Controller
{
    public function project_check()
    {
        $id = Auth::user()->id;

        $checkU = DB::table('capstone_user')->where('user_id',  $id)->count()>0;
        if($checkU){
            $users = DB::table('capstone_user')->where('user_id', $id)->pluck('capstone_id')->first();
            return response()->json([

                'ans'  => $users,
    
            ], 200);

        }else{
            return response()->json([

                'ans'  => 0,
    
            ], 200);

        }
        // return response()->json([

        //     'ans'  => $id,

        // ], 200);

        
        // $users = DB::table('capstone_user')->where('user_id', '$id')->pluck('capstone_id')->first();

        // $userrole = User::find($users);
  
    }



    public function add_capstone(Request $request)
    {
        $capstone = new Capstone();

        $capstone->groupname = $request->groupname;
        $capstone->title = $request->title;
        $capstone->abstract = $request->abstract;
        $capstone->start_date = $request->start_date;
        $capstone->xf1 = $request->xf1;
        $capstone->xf2 = $request->xf2;
        $capstone->save();


        // $capstone = $request->id;
        $capstone->user()->attach($request->students1, ['role_person' => 'student1']);
        $capstone->user()->attach($request->students2, ['role_person' => 'students2']);
        $capstone->user()->attach($request->students3, ['role_person' => 'students3']);
        $capstone->user()->attach($request->students4, ['role_person' => 'students4']);
        $capstone->user()->attach($request->panels1, ['role_person' => 'panels1']);
        $capstone->user()->attach($request->panels2, ['role_person' => 'panels2']);
        $capstone->user()->attach($request->panels3, ['role_person' => 'panels3']);
        $capstone->user()->attach($request->adviser, ['role_person' => 'adviser']);
        $capstone->user()->attach($request->coAdviser, ['role_person' => 'coAdviser']);
        $capstone->user()->attach($request->instructor, ['role_person' => 'instructor']);
        $capstone->user()->attach($request->secretarys, ['role_person' => 'secretarys']);


        // $capstone->user()->attach($request->students1, ['cert_number' => $cert_number]);

        // $user->roles()->attach($capstoneID);
    }

    public function update_capstone(Request $request, $id)
    {
        // $capstone = new Capstone();
        $capstone = Capstone::find($id);

        $capstone->groupname = $request->groupname;
        $capstone->title = $request->title;

        $capstone->abstract = $request->abstract;

        //  $capstone->user()->update([
        //     'user_id'=>$request->students1,
        // ]);




        $capstone->user()->where('role_person', 'student1')->update([
            'user_id' => $request->students1,
        ]);
        $capstone->user()->where('role_person', 'students2')->update([
            'user_id' => $request->students2,
        ]);
        $capstone->user()->where('role_person', 'students3')->update([
            'user_id' => $request->students3,
        ]);
        $capstone->user()->where('role_person', 'students4')->update([
            'user_id' => $request->students4,
        ]);


        $capstone->user()->where('role_person', 'panels1')->update([
            'user_id' => $request->panels1,
        ]);
        $capstone->user()->where('role_person', 'panels2')->update([
            'user_id' => $request->panels2,
        ]);
        $capstone->user()->where('role_person', 'panels3')->update([
            'user_id' => $request->panels3,
        ]);




        // $num=$capstone->user()->where('role_person','adviser')->count() < 1;

        // if($num){
        //     $capstone->user()->attach($request->adviser, ['role_person' => 'adviser']);

        // }else{
        //     $capstone->user()->where('role_person','adviser')->update([
        //         'user_id'=>$request->adviser,
        //     ]);

        // }

        $capstone->user()->where('role_person', 'adviser')->update([
            'user_id' => $request->adviser,
        ]);
        $capstone->user()->where('role_person', 'coAdviser')->update([
            'user_id' => $request->coAdviser,
        ]);

        $capstone->user()->where('role_person', 'instructor')->update([
            'user_id' => $request->instructor,
        ]);
        $capstone->user()->where('role_person', 'secretarys')->update([
            'user_id' => $request->secretarys,
        ]);


        $capstone->save();






        // $capstone = $request->id;
        // $capstone->user()->attach($request->students1, ['role_person' => 'student1']);
        // $capstone->user()->attach($request->students2, ['role_person' => 'students2']);
        // $capstone->user()->attach($request->students3, ['role_person' => 'students3']);
        // $capstone->user()->attach($request->students4, ['role_person' => 'students4']);
        // $capstone->user()->attach($request->panels1, ['role_person' => 'panels1']);
        // $capstone->user()->attach($request->panels2, ['role_person' => 'panels2']);
        // $capstone->user()->attach($request->panels3, ['role_person' => 'panels3']);
        // $capstone->user()->attach($request->adviser, ['role_person' => 'adviser']);
        // $capstone->user()->attach($request->coAdviser, ['role_person' => 'coAdviser']);
        // $capstone->user()->attach($request->instructor, ['role_person' => 'instructor']);
        // $capstone->user()->attach($request->secretarys, ['role_person' => 'secretarys']);

        // $capstone->user()->attach($request->students1, ['cert_number' => $cert_number]);

        // $user->roles()->attach($capstoneID);
    }

    public function testrate($id)
    {

        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();


        $check1 = DB::table('caps1ratings')->where('capstone1_id', $id)->where('user_id', $panel1)->count() < 1;
        $check2 = DB::table('caps1ratings')->where('capstone1_id', $id)->where('user_id', $panel2)->count() < 1;
        $check3 = DB::table('caps1ratings')->where('capstone1_id', $id)->where('user_id', $panel3)->count() < 1;

        $total = $check1 + $check2 + $check3;

        return response()->json(
            [
                'capstones'  => $check1,
            ],
            200
        );
    }

    public function create_capstone_proj($id)
    {

        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $capstoneid1 = DB::table('capstone1s')->where('capstone_id', $id)->count() < 1;
        $capstoneid2 = DB::table('capstone2s')->where('capstone_id', $id)->count() < 1;
        $capstoneid3 = DB::table('capstone3s')->where('capstone_id', $id)->count() < 1;

        $check1 = DB::table('caps1ratings')->where('capstone1_id', $id)->where('user_id', $panel1)->count() < 1;
        $check2 = DB::table('caps1ratings')->where('capstone1_id', $id)->where('user_id', $panel2)->count() < 1;
        $check3 = DB::table('caps1ratings')->where('capstone1_id', $id)->where('user_id', $panel3)->count() < 1;

        $check12 = DB::table('caps2ratings')->where('capstone2_id', $id)->where('user_id', $panel1)->count() < 1;
        $check22 = DB::table('caps2ratings')->where('capstone2_id', $id)->where('user_id', $panel2)->count() < 1;
        $check32 = DB::table('caps2ratings')->where('capstone2_id', $id)->where('user_id', $panel3)->count() < 1;

        $check13 = DB::table('caps3ratings')->where('capstone3_id', $id)->where('user_id', $panel1)->count() < 1;
        $check23 = DB::table('caps3ratings')->where('capstone3_id', $id)->where('user_id', $panel2)->count() < 1;
        $check33 = DB::table('caps3ratings')->where('capstone3_id', $id)->where('user_id', $panel3)->count() < 1;

        $status1 = "Working Cahapter 1,2,3";
        $status2 = "Under-Development";
        $status3 = "Pre-Documentation";
        $xf1 = 0;
        $xf2 = "PENDING";
        // $status1 = "PENDING";
        $total  = 0;



        if ($capstoneid1) {

            $capstone1 = new Capstone1();
            $capstone1->id = $id;
            $capstone1->capstone_id = $id;
            $capstone1->status = $status1;
            $capstone1->xf1 = $xf1;
            $capstone1->xf2 = $xf2;
            $capstone1->save();
        }
        if ($capstoneid2) {

            $capstone2 = new Capstone2();
            $capstone2->id = $id;
            $capstone2->status = $status2;
            $capstone2->capstone_id = $id;
            $capstone2->xf1 = $xf1;
            $capstone2->xf2 = $xf2;
            $capstone2->save();
        }
        if ($capstoneid3) {

            $capstone3 = new Capstone3();
            $capstone3->id = $id;
            $capstone3->capstone_id = $id;
            $capstone3->status = $status3;
            $capstone3->xf1 = $xf1;
            $capstone3->xf2 = $xf2;
            $capstone3->save();

           
        }


        // if ($check1) {
        //     $idauth1 = $panel1;

        //     $ratecaps1 = new Caps1rating();
        //     $ratecaps1->capstone1_id = $id;
        //     $ratecaps1->user_id = $idauth1;
        //     $ratecaps1->xf1 = $status1;
        //     $ratecaps1->total = $total;
        //     $ratecaps1->save();
        // }
        // if ($check2) {
        //     $idauth2 = $panel2;

        //     $ratecaps1 = new Caps1rating();
        //     $ratecaps1->capstone1_id = $id;
        //     $ratecaps1->user_id = $idauth2;
        //     $ratecaps1->xf1 = $status1;
        //     $ratecaps1->total = $total;
        //     $ratecaps1->save();
        // }
        // if ($check3) {
        //     $idauth3 = $panel3;

        //     $ratecaps1 = new Caps1rating();
        //     $ratecaps1->capstone1_id = $id;
        //     $ratecaps1->user_id = $idauth3;
        //     $ratecaps1->xf1 = $status1;
        //     $ratecaps1->total = $total;
        //     $ratecaps1->save();
        // }
        // if ($check12) {
        //     $idauth12 = $panel1;

        //     $ratecaps1 = new Caps2rating();
        //     $ratecaps1->capstone2_id = $id;
        //     $ratecaps1->user_id = $idauth12;
        //     $ratecaps1->xf1 = $status1;
        //     $ratecaps1->total = $total;

        //     $ratecaps1->save();
        // }
        // if ($check22) {
        //     $idauth22 = $panel2;

        //     $ratecaps1 = new Caps2rating();
        //     $ratecaps1->capstone2_id = $id;
        //     $ratecaps1->user_id = $idauth22;
        //     $ratecaps1->xf1 = $status1;
        //     $ratecaps1->total = $total;

        //     $ratecaps1->save();
        // }
        // if ($check32) {
        //     $idauth13 = $panel3;

        //     $ratecaps1 = new Caps2rating();
        //     $ratecaps1->capstone2_id = $id;
        //     $ratecaps1->user_id = $idauth13;
        //     $ratecaps1->xf1 = $status1;
        //     $ratecaps1->total = $total;

        //     $ratecaps1->save();
        // }

        // if ($check13) {
        //     $idauth13 = $panel1;

        //     $ratecaps1 = new Caps3rating();
        //     $ratecaps1->capstone3_id = $id;
        //     $ratecaps1->user_id = $idauth13;
        //     $ratecaps1->xf1 = $status1;
        //     $ratecaps1->total = $total;
        //     $ratecaps1->save();
        // }
        // if ($check23) {
        //     $idauth23 = $panel2;

        //     $ratecaps1 = new Caps3rating();
        //     $ratecaps1->capstone3_id = $id;
        //     $ratecaps1->user_id = $idauth23;
        //     $ratecaps1->xf1 = $status1;
        //     $ratecaps1->total = $total;
        //     $ratecaps1->save();
        // }
        // if ($check33) {
        //     $idauth33 = $panel3;

        //     $ratecaps1 = new Caps3rating();
        //     $ratecaps1->capstone3_id = $id;
        //     $ratecaps1->user_id = $idauth33;
        //     $ratecaps1->xf1 = $status1;
        //     $ratecaps1->total = $total;
        //     $ratecaps1->save();
        // }
    }

    public function get_all_capstone(Request $request)
    {

        $data = $request->searching;
        $sortdata = $request->sorting;
        if (Capstone::search($data)->get() != null && Capstone::search($data)->get() != "") {
            $capstone = Capstone::search($data)
                ->get();
            return response()->json(
                [
                    'capstones'  => $capstone,
                ],
                200
            );
        }
        $capstone = Capstone::all();
        return response()->json(
            [
                'capstones'  => $capstone,
            ],
            200
        );
    }
    public function get_all_capstonesort(Request $request)
    {

        $data = $request->searching;
        $sortdata = $request->sorting;
        if (($sortdata == "groupname" || $sortdata == "start_date" || $sortdata == "title" || $sortdata == "xf1")) {
            $capstone = Capstone::orderBy($sortdata, "asc")->get();
            return response()->json(
                [
                    'capstones'  => $capstone,
                ],
                200
            );
        } else {
            $capstone = Capstone::all();
            return response()->json(
                [
                    'capstones'  => $capstone,
                ],
                200
            );
        }
    }
    // 
    // $capstone= Capstone::sortByDesc('groupname')->get();
    // $users = Capstone::orderBy('id', 'desc')->limit(1)->get(); 
    // $capstone =Capstone::orderBy($sortdata, 'ASC')->get();
    // ->get();;
    // User::orderBy('created_at', 'DESC')->get();
    // if (false) {
    // if('BugTechnology'){searching
    // $data = $request->searching;
    // if ($id !=null) 
    // {
    // $panel = Capstone::whereRoleIs(['panel'])->get(); $request->searching
    // 
    // } else if($id==null||$id=="") {
    //     $capstone = Capstone::all();


    public function get_all_capstone_search()
    {

        // if($request->filled('searching')){
        //     $users = Capstone::search($request->search)->get();
        // }else{

        //     $capstone = Capstone::all();
        // }



        // $capstone->abstract = $request->abstract;


        $capstone = Capstone::all();
        return response()->json(
            [
                'capstonesneh'  => $capstone,
            ],
            200
        );
    }

    public function get_capstone($id)
    {
        $capstone = Capstone::find($id);
        return response()->json([

            'capstones'  => $capstone,

        ], 200);
    }
    public function get_capstonee($id)
    {
        // $tags = $item->Tags;
        $user  = User::find($id);
        // $capstone = Capstone::find($id);
        return response()->json([

            'userCaps'  => $user,

        ], 200);
    }
    public function get_capstone_student1(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'student1')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }

    public function get_capstone_student2(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'students2')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }
    public function get_capstone_student3(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'students3')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }
    public function get_capstone_student4(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'students4')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }
    public function get_capstone_panels1(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }
    public function get_capstone_panels2(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }
    public function get_capstone_panels3(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }
    public function get_capstone_adviser(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'adviser')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }
    public function get_capstone_coAdviser(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'coAdviser')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }
    public function get_capstone_instructor(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'instructor')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }
    public function get_capstone_secretarys(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'secretarys')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }

    public function get_pie_unimplement()
    {
        $unimplement = DB::table('capstones')->where('xf2', 'UNIMPLEMENTED')->count();

        // $userrole = User::find($users);
        return $unimplement;
        // return response()->json([

        //     'unimplement'  => $unimplement,

        // ], 200);
    }





    public function delete_capstone($id)
    {
        $capstone = Capstone::findOrFail($id);
        $capstone->user()->detach();
        $capstone->delete();
    }





    // $tags = $item->Tags;
    // $capstone = User::whereRoleIs(['student'])->get();

    // $target = $user->targets->find($targetId)


    // // $data = $capstone->pivot->role_person;

    // $user = $capstone->user()->having('role_person > student1')->first();

    // $user = User::with('capstone')->get();


    // $capstone = Capstone::with('user')->get();

    // $users = User::with('capstone', function ($query) {
    //     $query->wherepivot('role_person', 'adviser');
    // })->get();

    // $users = User::with(['capstone' => function ($query) {
    //     // $query->wherePivot('is_active', '=', 1);
    //     $query->wherePivot('role_person', 'instructor');
    // }],$capstone)->get();




    // $user_id = $users->user_id;

    // $users->user_id = $request->$users;
    //    $users->user_id;



    // $capstone  = Capstone::wherePivot('role_person', adviser)->first();
    // $roles = Role::get();
    // $users = User::wherePivot('role_person', 'adviser', $capstone)->get();
    // $capstone  = Capstone::where('name', $id);

    // $capstone = Capstone::whereRoleIs(['student'])->get();
    // $user  = User::find($id);
    // $capstone = Capstone::find($id);

}


    // $team  = Team::where('name', $id)->first();
    // $roles = Role::get();
    // $users = User::whereRoleIs($roles->pluck('name')->toArray(), $team)->get();

        // $team  = Team::where('name', $id)->first();
    // $users = User::whereRoleIs(['Admin'], $team)->get();
