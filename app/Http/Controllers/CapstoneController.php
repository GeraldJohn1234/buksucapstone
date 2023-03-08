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
use App\Models\instructor;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class CapstoneController extends Controller
{


    public function project_check()
    {
        $id = Auth::user()->id;

        $checkU = DB::table('capstone_user')->where('user_id',  $id)->count() > 0;

        // $checkU = DB::table('capstones')->where('user_id',  $id)->count() > 0;


        if ($checkU) {
            $users = DB::table('capstone_user')->where('user_id', $id)->pluck('capstone_id')->first();

            $checkCaps = DB::table('capstones')->where('id',  $users)->count() > 0;
            if ($checkCaps) {
                return response()->json([

                    'ans'  => $users,

                ], 200);
            } else {
                return response()->json([

                    'ans'  => 0,

                ], 200);
            }
        } else {
            return response()->json([

                'ans'  => 0,

            ], 200);
        }
    }

    public function add_capstone_project(Request $request)
    {
        $capstone = new Capstone();

        $capstone->groupname = $request->groupname;
        $capstone->title = $request->title;
        $capstone->abstract = $request->abstract;
        $capstone->xf3 = $request->instructor;
        $capstone->xf1 = $request->xf1;
        $capstone->xf2 = $request->xf2;

        $capstone->save();


        if ($request->students1 != null) {
            $capstone->user()->attach($request->students1, ['role_person' => 'student1']);
        }
        if ($request->students2 != null) {
            $capstone->user()->attach($request->students2, ['role_person' => 'students2']);
        }
        if ($request->students3 != null) {
            $capstone->user()->attach($request->students3, ['role_person' => 'students3']);
        }
        if ($request->students4 != null) {
            $capstone->user()->attach($request->students4, ['role_person' => 'students4']);
        }

        $capstone->user()->attach($request->panels1, ['role_person' => 'panels1']);
        $capstone->user()->attach($request->panels2, ['role_person' => 'panels2']);
        $capstone->user()->attach($request->panels3, ['role_person' => 'panels3']);
        $capstone->user()->attach($request->adviser, ['role_person' => 'adviser']);
        $capstone->user()->attach($request->coAdviser, ['role_person' => 'coAdviser']);

        $capstone->user()->attach($request->secretarys, ['role_person' => 'secretarys']);
    }



    public function update_capstone(Request $request, $id)
    {
        $student1 = DB::table('capstone_user')->where('role_person', 'student1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $students2 = DB::table('capstone_user')->where('role_person', 'students2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $students3 = DB::table('capstone_user')->where('role_person', 'students3')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $students4 = DB::table('capstone_user')->where('role_person', 'students4')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $panels1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panels2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panels3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $adviser = DB::table('capstone_user')->where('role_person', 'adviser')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $coAdviser = DB::table('capstone_user')->where('role_person', 'coAdviser')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $secretarys = DB::table('capstone_user')->where('role_person', 'secretarys')
            ->where('capstone_id', $id)->pluck('user_id')->first();



        $capstone = Capstone::find($id);

        if ($request->file == null) {
            $name = $capstone->xf5;
        } else if (($capstone->xf5 != $request->file)) {

            $filee = $request->file('file');
            $name = time() . '.' . $filee->getClientOriginalName();

            $upload_path = public_path() . "/pdf/";
            $files = $upload_path . $capstone->xf5;

            $filee->move(public_path('pdf'), $name);
            if (file_exists($files)) {
                @unlink($files);
            }
        } else {
            $name = $capstone->xf5;
        }
        $capstone->xf5 = $name;

        $capstone->groupname = $request->groupname;
        $capstone->title = $request->title;

        $capstone->abstract = $request->abstract;
        $capstone->xf1 = $request->xf1;
        $capstone->xf2 = $request->xf2;
        $capstone->xf4 = $request->xf4;
        $capstone->name = $request->name;



        if ($request->students1 == 10000000) {
            $capstone->user()->where('role_person', 'student1')->update([
                'user_id' => $student1,
            ]);
        } else {
            $capstone->user()->where('role_person', 'student1')->update([
                'user_id' => $request->students1,
            ]);
        }

        if ($request->students2 == 10000000) {
            $capstone->user()->where('role_person', 'students2')->update([
                'user_id' => $students2,
            ]);
        } else {
            $capstone->user()->where('role_person', 'students2')->update([
                'user_id' => $request->students2,
            ]);
        }
        if ($request->students3 == 10000000) {
            $capstone->user()->where('role_person', 'students3')->update([
                'user_id' => $students3,
            ]);
        } else {
            $capstone->user()->where('role_person', 'students3')->update([
                'user_id' => $request->students3,
            ]);
        }

        if ($request->students4 == 10000000) {
            $capstone->user()->where('role_person', 'students4')->update([
                'user_id' => $students4,
            ]);
        } else {
            $capstone->user()->where('role_person', 'students4')->update([
                'user_id' => $request->students4,
            ]);
        }

        if ($request->panels1 == 10000000) {
            $capstone->user()->where('role_person', 'panels1')->update([
                'user_id' => $panels1,
            ]);
        } else {
            $capstone->user()->where('role_person', 'panels1')->update([
                'user_id' => $request->panels1,
            ]);
        }

        if ($request->panels2 == 10000000) {
            $capstone->user()->where('role_person', 'panels2')->update([
                'user_id' => $panels2,
            ]);
        } else {
            $capstone->user()->where('role_person', 'panels2')->update([
                'user_id' => $request->panels2,
            ]);
        }
        if ($request->panels3 == 10000000) {
            $capstone->user()->where('role_person', 'panels3')->update([
                'user_id' => $panels3,
            ]);
        } else {
            $capstone->user()->where('role_person', 'panels3')->update([
                'user_id' => $request->panels3,
            ]);
        }

        if ($request->adviser == 10000000) {
            $capstone->user()->where('role_person', 'adviser')->update([
                'user_id' => $adviser,
            ]);
            $capstone->xf6 = $adviser;
        } else {
            $capstone->user()->where('role_person', 'adviser')->update([
                'user_id' => $request->adviser,
            ]);
            $capstone->xf6 = $request->adviser;
        }

        if ($request->coAdviser == 10000000) {
            $capstone->user()->where('role_person', 'coAdviser')->update([
                'user_id' => $coAdviser,
            ]);
        } else {
            $capstone->user()->where('role_person', 'coAdviser')->update([
                'user_id' => $request->coAdviser,
            ]);
        }

        if ($request->secretarys == 10000000) {
            $capstone->user()->where('role_person', 'secretarys')->update([
                'user_id' => $secretarys,
            ]);
        } else {
            $capstone->user()->where('role_person', 'secretarys')->update([
                'user_id' => $request->secretarys,
            ]);
        }

        $capstone->save();
    }


    public function caps1minutes(Request $request, $id)
    {

        $capstone = Capstone1::find($id);

        if ($request->minutes1 == null) {

            $name = $capstone->minutes1;
        } else if (($capstone->minutes1 != $request->minutes1)) {

            $filee = $request->file('minutes1');
            $name = time() . '.' . $filee->getClientOriginalName();

            $upload_path = public_path() . "/pdfminutes1/";
            $files = $upload_path . $capstone->minutes1;
            $filee->move(public_path('pdfminutes1'), $name);
            if (file_exists($files)) {
                @unlink($files);
            }
        } else {
            $name = $capstone->minutes1;
        }
        $capstone->minutes1 = $name;

        $capstone->save();
    }
    public function caps2minutes(Request $request, $id)
    {

        $capstone = Capstone2::find($id);

        if ($request->minutes1 == null) {

            $name = $capstone->minutes1;
        } else if (($capstone->minutes1 != $request->minutes1)) {

            $filee = $request->file('minutes1');
            $name = time() . '.' . $filee->getClientOriginalName();

            $upload_path = public_path() . "/pdfminutes2/";
            $files = $upload_path . $capstone->minutes1;
            $filee->move(public_path('pdfminutes2'), $name);
            if (file_exists($files)) {
                @unlink($files);
            }
        } else {
            $name = $capstone->minutes1;
        }
        $capstone->minutes1 = $name;

        $capstone->save();
    }
    public function caps3minutes(Request $request, $id)
    {

        $capstone = Capstone3::find($id);

        if ($request->minutes1 == null) {

            $name = $capstone->minutes1;
        } else if (($capstone->minutes1 != $request->minutes1)) {

            $filee = $request->file('minutes1');
            $name = time() . '.' . $filee->getClientOriginalName();

            $upload_path = public_path() . "/pdfminutes3/";
            $files = $upload_path . $capstone->minutes1;
            $filee->move(public_path('pdfminutes3'), $name);
            if (file_exists($files)) {
                @unlink($files);
            }
        } else {
            $name = $capstone->minutes1;
        }
        $capstone->minutes1 = $name;

        $capstone->save();
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
    public function checkproponent($id)
    {

        $authid = Auth::user()->id;
        $count = 0;

        $proponent1 = DB::table('capstone_user')->where('role_person', 'student1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $proponent2 = DB::table('capstone_user')->where('role_person', 'students2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $proponent3 = DB::table('capstone_user')->where('role_person', 'students3')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $proponent4 = DB::table('capstone_user')->where('role_person', 'students4')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($proponent1 == $authid) {
            $count = $count + 1;
        }
        if ($proponent2 == $authid) {
            $count = $count + 1;
        }
        if ($proponent3 == $authid) {
            $count = $count + 1;
        }
        return $count;
    }

    public function  getadviseesort(Request $request)
    {

        $panel1 = DB::table('capstone_user')->where('role_person', 'adviser')
            ->where('user_id', 14)->pluck('capstone_id');

        $data = $request->searching;
        $sortdata = $request->sorting;
        if (($sortdata == "groupname" || $sortdata == "start_date" || $sortdata == "title" || $sortdata == "xf1")) {
            $capstone = Capstone::find($panel1)->orderBy($sortdata, "asc")->get();
            return response()->json(
                [
                    'capstones'  => $capstone,
                ],
                200
            );
        } else {
            // $capstone = Capstone::all();
            $capstone = Capstone::find($panel1);
            return response()->json(
                [
                    'capstones'  => $capstone,
                ],
                200
            );
        }
    }



    public function save_instructor(Request $request)
    {
        $capstone = new instructor();

        $capstone->id = $request->capstone_id;
        $capstone->capstone_id = $request->capstone_id;
        $capstone->user_id = $request->user_id;

        $capstone->save();
    }

    public function get_all_capstone_advisee(Request $request)
    {
        $id = Auth::user()->id;
        $panel1 = DB::table('capstone_user')->where('role_person', 'adviser')
            ->where('user_id', $id)->pluck('capstone_id');
        $capstone = Capstone::find($panel1);
        return response()->json(
            [
                'capstones'  => $capstone,
            ],
            200
        );
    }

    public function advisee_count_not_done($id)
    {
        $advisee_under = DB::table('capstones')->where('xf2', 'UNDER DEVELOPMENT')->where('xf6', $id)->count();

        return response()->json(
            [
                'capstones'  => $advisee_under,
            ],
            200
        );
    }
    public function advisee_count_done($id)
    {
        $advisee = DB::table('capstone_user')->where('role_person', 'adviser')->where('user_id', $id)->count();
        $advisee_under = DB::table('capstones')->where('xf2', 'UNDER DEVELOPMENT')->where('xf6', $id)->count();
        $advise_not_done = $advisee - $advisee_under;
        return response()->json(
            [
                'capstones'  => $advise_not_done,
            ],
            200
        );
    }
    public function secretarys_count($id)
    {
        $secretarys = DB::table('capstone_user')->where('role_person', 'secretarys')->where('user_id', $id)->count();
        return response()->json(
            [
                'capstones'  => $secretarys,
            ],
            200
        );
    }
    public function panels_count($id)
    {
        $panels1 = DB::table('capstone_user')->where('role_person', 'panels1')->where('user_id', $id)->count();
        $panels2 = DB::table('capstone_user')->where('role_person', 'panels2')->where('user_id', $id)->count();
        $panels3 = DB::table('capstone_user')->where('role_person', 'panels3')->where('user_id', $id)->count();

        $panel = $panels1 + $panels2 + $panels3;
        return response()->json(
            [
                'capstones'  => $panel,
            ],
            200
        );
    }



    public function get_all_capstone_panel(Request $request)
    {
        $id = Auth::user()->id;


        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('user_id', $id)->pluck('capstone_id');
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('user_id', $id)->pluck('capstone_id');
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('user_id', $id)->pluck('capstone_id');

        $all = $panel1->merge($panel2);
        $alll = $panel3->merge($all);
        $capstone = Capstone::find($alll);
        return response()->json(
            [
                'capstones'  => $capstone,
            ],
            200
        );
    }

    public function get_all_capstone_secretary(Request $request)
    {
        $id = Auth::user()->id;


        $secretary = DB::table('capstone_user')->where('role_person', 'secretarys')
            ->where('user_id', $id)->pluck('capstone_id');

        $capstone = Capstone::find($secretary);
        return response()->json(
            [
                'capstones'  => $capstone,
            ],
            200
        );
    }




    public function get_all_capstone_instructorr(Request $request)
    {
        $id = Auth::user()->id;


        $panel1 = DB::table('capstone1s')->where('xf3', $id)->pluck('capstone_id');
        $panel2 = DB::table('capstone2s')->where('xf3', $id)->pluck('capstone_id');
        $panel3 = DB::table('capstone3s')->where('xf3', $id)->pluck('capstone_id');

        $all = $panel1->merge($panel2);
        $alll = $panel3->merge($all);
        $capstone = Capstone::find($alll);
        return response()->json(
            [
                'capstones'  => $capstone,
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
        $xf3 = "NOT YET, SET";

        $total  = 0;



        if ($capstoneid1) {

            $capstone1 = new Capstone1();
            $capstone1->id = $id;
            $capstone1->capstone_id = $id;
            $capstone1->status = $status1;
            $capstone1->xf1 = $xf1;
            $capstone1->xf2 = $xf2;
            $capstone1->xf3 = $xf3;
            $capstone1->save();
        }
        if ($capstoneid2) {

            $capstone2 = new Capstone2();
            $capstone2->id = $id;
            $capstone2->status = $status2;
            $capstone2->capstone_id = $id;
            $capstone2->xf1 = $xf1;
            $capstone2->xf2 = $xf2;
            $capstone2->xf3 = $xf3;
            $capstone2->save();
        }
        if ($capstoneid3) {

            $capstone3 = new Capstone3();
            $capstone3->id = $id;
            $capstone3->capstone_id = $id;
            $capstone3->status = $status3;
            $capstone3->xf1 = $xf1;
            $capstone3->xf2 = $xf2;
            $capstone3->xf3 = $xf3;
            $capstone3->save();
        }


        if ($check1) {
            $idauth1 = $panel1;

            $ratecaps1 = new Caps1rating();
            $ratecaps1->capstone1_id = $id;
            $ratecaps1->user_id = $idauth1;
            $ratecaps1->xf1 = $xf2;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
        if ($check2) {
            $idauth2 = $panel2;

            $ratecaps1 = new Caps1rating();
            $ratecaps1->capstone1_id = $id;
            $ratecaps1->user_id = $idauth2;
            $ratecaps1->xf1 = $xf2;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
        if ($check3) {
            $idauth3 = $panel3;

            $ratecaps1 = new Caps1rating();
            $ratecaps1->capstone1_id = $id;
            $ratecaps1->user_id = $idauth3;
            $ratecaps1->xf1 = $xf2;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
        if ($check12) {
            $idauth12 = $panel1;

            $ratecaps1 = new Caps2rating();
            $ratecaps1->capstone2_id = $id;
            $ratecaps1->user_id = $idauth12;
            $ratecaps1->xf1 = $xf2;
            $ratecaps1->total = $total;

            $ratecaps1->save();
        }
        if ($check22) {
            $idauth22 = $panel2;

            $ratecaps1 = new Caps2rating();
            $ratecaps1->capstone2_id = $id;
            $ratecaps1->user_id = $idauth22;
            $ratecaps1->xf1 = $xf2;
            $ratecaps1->total = $total;

            $ratecaps1->save();
        }
        if ($check32) {
            $idauth13 = $panel3;

            $ratecaps1 = new Caps2rating();
            $ratecaps1->capstone2_id = $id;
            $ratecaps1->user_id = $idauth13;
            $ratecaps1->xf1 = $xf2;
            $ratecaps1->total = $total;

            $ratecaps1->save();
        }

        if ($check13) {
            $idauth13 = $panel1;
            $ratecaps1 = new Caps3rating();
            $ratecaps1->capstone3_id = $id;
            $ratecaps1->user_id = $idauth13;
            $ratecaps1->xf1 = $xf2;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
        if ($check23) {
            $idauth23 = $panel2;

            $ratecaps1 = new Caps3rating();
            $ratecaps1->capstone3_id = $id;
            $ratecaps1->user_id = $idauth23;
            $ratecaps1->xf1 = $xf2;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
        if ($check33) {
            $idauth33 = $panel3;

            $ratecaps1 = new Caps3rating();
            $ratecaps1->capstone3_id = $id;
            $ratecaps1->user_id = $idauth33;
            $ratecaps1->xf1 = $xf2;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
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



    public function get_all(Request $request)
    {
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
        if (($sortdata == "groupname" || $sortdata == "start_date" || $sortdata == "title" || $sortdata == "xf1" || $sortdata == "xf3")) {
            $capstone = Capstone::orderBy($sortdata, "asc")->get();
            return response()->json(
                [
                    'capstones'  => $capstone,
                ],
                200
            );
        } else if ($sortdata == "xf2") {
            $capstone = Capstone::orderBy($sortdata, "desc")->get();
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


    public function get_all_capstone_search()
    {


        $capstone = Capstone::all();
        return response()->json(
            [
                'capstonesneh'  => $capstone,
            ],
            200
        );
    }

    public function get_capstone_check($id)
    {
        $checkU = DB::table('capstone_user')->where('user_id',  $id)->count() > 0;
        if ($checkU) {
            $users = DB::table('capstone_user')->where('user_id', $id)->pluck('capstone_id')->first();
            return response()->json([

                'ans'  => $users,

            ], 200);
        } else {
            return response()->json([

                'ans'  => 0,

            ], 200);
        }
    }

    public function get_capstone($id)
    {
        $capstone = Capstone::find($id);
        return response()->json([

            'capstones'  => $capstone,

        ], 200);
    }
    public function get_capstone_adviser_view($id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'adviser')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        $userrole = User::find($users);
        return response()->json(
            [
                'userrs'  => $userrole,
            ],
            200
        );
    }
    public function get_capstonee($id)
    {
        $user  = User::find($id);
        return response()->json([

            'userCaps'  => $user,

        ], 200);
    }
    public function get_capstone_student1(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'student1')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }

    public function get_capstone_student2(Request $request, $id)
    {

        $users = DB::table('capstone_user')->where('role_person', 'students2')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }
    public function get_capstone_student3(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'students3')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }
    public function get_capstone_student4(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'students4')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }




    public function get_capstone_inst(Request $request, $id)
    {


        $userrole = User::find($id);
        return response()->json([

            'userCaps'  => $userrole,

        ], 200);
    }

    public function get_capstone_panels1(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }
    public function get_capstone_panels2(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }
    public function get_capstone_panels3(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }
    public function get_capstone_adviser(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'adviser')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }
    public function get_capstone_coAdviser(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'coAdviser')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }
    public function get_capstone_instructor(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'instructor')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }
    public function get_capstone_secretarys(Request $request, $id)
    {
        $users = DB::table('capstone_user')->where('role_person', 'secretarys')
            ->where('capstone_id', $id)->pluck('user_id')->first();

        if ($users != null) {
            $userrole = User::find($users);
            return response()->json([

                'userCaps'  => $userrole,

            ], 200);
        } else {
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }
    }

    public function get_pie_unimplement()
    {
        $unimplement = DB::table('capstones')->where('xf2', 'UNIMPLEMENTED')->count();

        return $unimplement;
    }





    public function delete_capstone($id)
    {
        $rating1 = Caps1rating::find($id);
        $rating2 = Caps2rating::find($id);
        $rating3 = Caps3rating::find($id);

        $capstone = Capstone::find($id);
        $capstone1 = Capstone1::find($id);
        $capstone2 = Capstone2::find($id);
        $capstone3 = Capstone3::find($id);
        $capstone->user()->detach();
        if ($rating1 != null) {
            $rating1->delete();
        }
        if ($rating2 != null) {
            $rating2->delete();
        }
        if ($rating3 != null) {
            $rating3->delete();
        }

        if ($capstone != null) {
            $capstone->delete();
        }
        if ($capstone1 != null) {
            $capstone1->delete();
        }
        if ($capstone2 != null) {
            $capstone2->delete();
        }
        if ($capstone3 != null) {
            $capstone3->delete();
        }
    }



    public function audit_capstone()
    {
        $capstone = Capstone::first();
        $auditcapstone =  $capstone->audits;

        return response()->json([

            'audit'  => $auditcapstone,

        ], 200);
    }
    public function audit_capstone1()
    {
        $capstone1 = Capstone1::first();
        $auditcapstone =  $capstone1->audits;

        return response()->json([

            'audit'  => $auditcapstone,

        ], 200);
    }
    public function audit_capstone2()
    {
        $capstone2 = Capstone2::first();
        $auditcapstone =  $capstone2->audits;
        return response()->json([

            'audit'  => $auditcapstone,

        ], 200);
    }
    public function audit_capstone3()
    {
        $capstone33 = Capstone3::first();
        $auditcapstone =  $capstone33->audits;
        return response()->json([

            'audit'  => $auditcapstone,

        ], 200);
    }
    public function audit_user()
    {
        $user = User::first();
        $auditcapstone =  $user->audits;
        return response()->json([

            'audit'  => $auditcapstone,

        ], 200);
    }
}
