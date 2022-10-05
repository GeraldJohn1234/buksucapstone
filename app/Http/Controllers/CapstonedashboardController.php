<?php

namespace App\Http\Controllers;

use App\Models\Caps1rating;
use App\Models\Caps2rating;
use App\Models\Caps3rating;
use App\Models\Capstone;
use App\Models\Capstone1;
use App\Models\Capstone2;
use App\Models\Capstone3;
use App\Models\Capstonedashboard;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CapstonedashboardController extends Controller
{

    public function store_dashboard()
    {
        $administrator = DB::table('role_user')->where('role_id', 1)->count();
        $adviser = DB::table('role_user')->where('role_id', 2)->count();
        $instructor = DB::table('role_user')->where('role_id', 3)->count();
        $panel = DB::table('role_user')->where('role_id', 4)->count();
        $secretary = DB::table('role_user')->where('role_id', 5)->count();
        $student = DB::table('role_user')->where('role_id', 6)->count();
        $archiver = DB::table('role_user')->where('role_id', 7)->count();
        $all = $adviser + $instructor + $administrator + $panel + $secretary + $student + $archiver;

        $under_develop = DB::table('capstones')->where('xf2', "UNDER DEVELOPMENT")->count();
        $unimplemented = DB::table('capstones')->where('xf2', "UNIMPLEMENTED")->count();
        $deploy = DB::table('capstones')->where('xf2', "DEPLOYED")->count();

        $approve1 = DB::table('capstone1s')->where('xf2', "APPROVED")->count();
        $approve2 = DB::table('capstone2s')->where('xf2', "APPROVED")->count();
        $approve3 = DB::table('capstone3s')->where('xf2', "APPROVED")->count();

        $defense1 = DB::table('capstone1s')->where('status', "Under-Revision")->count();
        $defense2 = DB::table('capstone2s')->where('status', "Under-Revision")->count();
        $defense3 = DB::table('capstone3s')->where('status', "Under-Revision")->count();

        $no__capstone = Capstone::count();

        $working1= $no__capstone - $approve1 - $defense1;
        $working2= $no__capstone - $approve2 - $defense2;
        $working3= $no__capstone - $approve3 - $defense3;






        // $capstoneid2 = DB::table('capstone2s')->where('capstone_id', $id)->count() < 1; capstones 
        // $capstoneid3 = DB::table('capstone3s')->where('capstone_id', $id)->count() < 1;

        $capstonedashboard = Capstonedashboard::find(1);



        $capstonedashboard->instructor1 = $instructor;
        // $capstonedashboard->instructor2 =
        // $capstonedashboard->instructor3 =

        $capstonedashboard->panelist  = $panel;
        $capstonedashboard->students  = $student;
        $capstonedashboard->adviser  = $adviser;
        // $capstonedashboard->co_adviser  =
        $capstonedashboard->archiver  = $archiver;
        $capstonedashboard->secretary  = $secretary;



        $capstonedashboard->under_develop  = $under_develop;
        $capstonedashboard->deploy  = $deploy;
        $capstonedashboard->unimplemented  = $unimplemented;

        $capstonedashboard->no_group1  = $no__capstone;
        $capstonedashboard->no_propose_def  = $working1;
        $capstonedashboard->under_revision_1  = $defense1;
        $capstonedashboard->approved_panels_1  = $approve1;

        $capstonedashboard->no_group2  = $no__capstone;
        $capstonedashboard->no_prototype_def  = $working2;
        $capstonedashboard->under_revision_2  = $defense2;
        $capstonedashboard->approved_panels_2  = $approve2;

        $capstonedashboard->no_group3  = $no__capstone;
        $capstonedashboard->no_final_def  = $working3;
        $capstonedashboard->under_revision_3  = $defense3;
        $capstonedashboard->approved_panels_3  = $approve3;

        $capstonedashboard->save();
    }
    public function get_dashboard()
    {
        $dashboardne = Capstonedashboard::find(1);
        return response()->json([

            'dashboards'  => $dashboardne,

        ], 200);
    }

    public function approved_rate_status($id)
    {


        $partial = 0;
        $approved = 0;
        $approvedrate = 0;



        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();


        $panelapprove1 = DB::table('caps1ratings')->where('user_id', $panel1)
            ->where('capstone1_id', $id)->pluck('xf1')->first();
        $panelapprove2 = DB::table('caps1ratings')->where('user_id', $panel2)
            ->where('capstone1_id', $id)->pluck('xf1')->first();
        $panelapprove3 = DB::table('caps1ratings')->where('user_id', $panel3)
            ->where('capstone1_id', $id)->pluck('xf1')->first();

        $panelrate1 = DB::table('caps1ratings')->where('user_id', $panel1)
            ->where('capstone1_id', $id)->pluck('total')->first();
        $panelrate2 = DB::table('caps1ratings')->where('user_id', $panel2)
            ->where('capstone1_id', $id)->pluck('total')->first();
        $panelrate3 = DB::table('caps1ratings')->where('user_id', $panel3)
            ->where('capstone1_id', $id)->pluck('total')->first();


        if ($panelapprove1 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else if ($panelapprove1 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else {
            $partial = $partial + 0;
        }


        if ($panelapprove2 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else if ($panelapprove2 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else {
            $partial = $partial + 0;
        }

        if ($panelapprove3 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else if ($panelapprove3 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else {
            $partial = $partial + 0;
        }

        if ($approved == 3) {
            $ratestatus = "APPROVED";
        } else if ($approved > 0) {
            $ratestatus = "PARTIAL";
        } else if ($partial > 0) {
            $ratestatus = "PARTIAL";
        } else {
            $ratestatus = "PENDING";
        }

        return response()->json([

            'ratestatus'  => $ratestatus,

        ], 200);
    }


    public function approved_rate_status2($id)
    {


        $partial = 0;
        $approved = 0;
        $approvedrate = 0;



        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();


        $panelapprove1 = DB::table('caps2ratings')->where('user_id', $panel1)
            ->where('capstone2_id', $id)->pluck('xf1')->first();
        $panelapprove2 = DB::table('caps2ratings')->where('user_id', $panel2)
            ->where('capstone2_id', $id)->pluck('xf1')->first();
        $panelapprove3 = DB::table('caps2ratings')->where('user_id', $panel3)
            ->where('capstone2_id', $id)->pluck('xf1')->first();

         $panelrate1 = DB::table('caps2ratings')->where('user_id', $panel1)
            ->where('capstone2_id', $id)->pluck('total')->first();
        $panelrate2 = DB::table('caps2ratings')->where('user_id', $panel2)
            ->where('capstone2_id', $id)->pluck('total')->first();
        $panelrate3 = DB::table('caps2ratings')->where('user_id', $panel3)
            ->where('capstone2_id', $id)->pluck('total')->first();


        if ($panelapprove1 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else if ($panelapprove1 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else {
            $partial = $partial + 0;
        }


        if ($panelapprove2 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else if ($panelapprove2 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else {
            $partial = $partial + 0;
        }

        if ($panelapprove3 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else if ($panelapprove3 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else {
            $partial = $partial + 0;
        }

        if ($approved == 3) {
            $ratestatus = "APPROVED";
        } else if ($approved > 0) {
            $ratestatus = "PARTIAL";
        } else if ($partial > 0) {
            $ratestatus = "PARTIAL";
        } else {
            $ratestatus = "PENDING";
        }

        return response()->json([

            'ratestatus'  => $ratestatus,

        ], 200);
    }

    public function approved_rate_status3($id)
    {


        $partial = 0;
        $approved = 0;
        $approvedrate = 0;



        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();


        $panelapprove1 = DB::table('caps3ratings')->where('user_id', $panel1)
            ->where('capstone3_id', $id)->pluck('xf1')->first();
        $panelapprove2 = DB::table('caps3ratings')->where('user_id', $panel2)
            ->where('capstone3_id', $id)->pluck('xf1')->first();
        $panelapprove3 = DB::table('caps3ratings')->where('user_id', $panel3)
            ->where('capstone3_id', $id)->pluck('xf1')->first();

         $panelrate1 = DB::table('caps3ratings')->where('user_id', $panel1)
            ->where('capstone3_id', $id)->pluck('total')->first();
        $panelrate2 = DB::table('caps3ratings')->where('user_id', $panel2)
            ->where('capstone3_id', $id)->pluck('total')->first();
        $panelrate3 = DB::table('caps3ratings')->where('user_id', $panel3)
            ->where('capstone3_id', $id)->pluck('total')->first();


        if ($panelapprove1 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else if ($panelapprove1 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else {
            $partial = $partial + 0;
        }


        if ($panelapprove2 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else if ($panelapprove2 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else {
            $partial = $partial + 0;
        }

        if ($panelapprove3 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else if ($panelapprove3 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else {
            $partial = $partial + 0;
        }

        if ($approved == 3) {
            $ratestatus = "APPROVED";
        } else if ($approved > 0) {
            $ratestatus = "PARTIAL";
        } else if ($partial > 0) {
            $ratestatus = "PARTIAL";
        } else {
            $ratestatus = "PENDING";
        }

        return response()->json([

            'ratestatus'  => $ratestatus,

        ], 200);
    }




    public function get_rate_panel1($id)
    {

        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();


        $panelrate1 = DB::table('caps1ratings')->where('user_id', $panel1)
            ->where('capstone1_id', $id)->pluck('id')->first();

        $capstone1 = Caps1rating::find($panelrate1);

        return response()->json([

            'panelrate1'  => $capstone1,

        ], 200);
    }
    public function get_rate_panel2($id)
    {
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panelrate2 = DB::table('caps1ratings')->where('user_id', $panel2)
            ->where('capstone1_id', $id)->pluck('id')->first();

            $capstone2 = Caps1rating::find($panelrate2);

        return response()->json([

            'panelrate2'  => $capstone2,

        ], 200);
    }

    public function get_rate_panel3($id)
    {
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panelrate3 = DB::table('caps1ratings')->where('user_id', $panel3)
            ->where('capstone1_id', $id)->pluck('id')->first();

            $capstone3 = Caps1rating::find($panelrate3);

        return response()->json([

            'panelrate3'  => $capstone3,

        ], 200);
    }

    public function get_rate_panel12($id)
    {

        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();


        $panelrate1 = DB::table('caps2ratings')->where('user_id', $panel1)
            ->where('capstone2_id', $id)->pluck('id')->first();

        $capstone1 = Caps2rating::find($panelrate1);

        return response()->json([

            'panelrate1'  => $capstone1,

        ], 200);
    }
    public function get_rate_panel22($id)
    {
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panelrate2 = DB::table('caps2ratings')->where('user_id', $panel2)
            ->where('capstone2_id', $id)->pluck('id')->first();

            $capstone2 = Caps2rating::find($panelrate2);

        return response()->json([

            'panelrate2'  => $capstone2,

        ], 200);
    }

    public function get_rate_panel32($id)
    {
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panelrate3 = DB::table('caps2ratings')->where('user_id', $panel3)
            ->where('capstone2_id', $id)->pluck('id')->first();

            $capstone3 = Caps2rating::find($panelrate3);

        return response()->json([

            'panelrate3'  => $capstone3,

        ], 200);
    }

    public function get_rate_panel13($id)
    {

        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();


        $panelrate1 = DB::table('caps3ratings')->where('user_id', $panel1)
            ->where('capstone3_id', $id)->pluck('id')->first();

        $capstone1 = Caps3rating::find($panelrate1);

        return response()->json([

            'panelrate1'  => $capstone1,

        ], 200);
    }
    public function get_rate_panel23($id)
    {
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panelrate2 = DB::table('caps3ratings')->where('user_id', $panel2)
            ->where('capstone3_id', $id)->pluck('id')->first();

            $capstone2 = Caps3rating::find($panelrate2);

        return response()->json([

            'panelrate2'  => $capstone2,

        ], 200);
    }

    public function get_rate_panel33($id)
    {
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panelrate3 = DB::table('caps3ratings')->where('user_id', $panel3)
            ->where('capstone3_id', $id)->pluck('id')->first();

            $capstone3 = Caps3rating::find($panelrate3);

        return response()->json([

            'panelrate3'  => $capstone3,

        ], 200);
    }



    public function approved_rate($id)
    {


        $partial = 0;
        $approved = 0;
        $approvedrate = 0;




        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();


        $panelapprove1 = DB::table('caps1ratings')->where('user_id', $panel1)
            ->where('capstone1_id', $id)->pluck('xf1')->first();
        $panelapprove2 = DB::table('caps1ratings')->where('user_id', $panel2)
            ->where('capstone1_id', $id)->pluck('xf1')->first();
        $panelapprove3 = DB::table('caps1ratings')->where('user_id', $panel3)
            ->where('capstone1_id', $id)->pluck('xf1')->first();

        $panelrate1 = DB::table('caps1ratings')->where('user_id', $panel1)
            ->where('capstone1_id', $id)->pluck('total')->first();
        $panelrate2 = DB::table('caps1ratings')->where('user_id', $panel2)
            ->where('capstone1_id', $id)->pluck('total')->first();
        $panelrate3 = DB::table('caps1ratings')->where('user_id', $panel3)
            ->where('capstone1_id', $id)->pluck('total')->first();


        if ($panelapprove1 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else if ($panelapprove1 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else {
            $approvedrate = $approvedrate + $panelrate1;
        }


        if ($panelapprove2 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else if ($panelapprove2 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else {
            $approvedrate = $approvedrate + $panelrate2;
        }

        if ($panelapprove3 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else if ($panelapprove3 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else {
            $approvedrate = $approvedrate + $panelrate3;
        }


        $totalrate =  $approvedrate / 3;






        return response()->json([

            'totalrate'  => $totalrate,

        ], 200);
    }



    public function approved_rate2($id)
    {


        $partial = 0;
        $approved = 0;
        $approvedrate = 0;




        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();

            $panelapprove1 = DB::table('caps2ratings')->where('user_id', $panel1)
            ->where('capstone2_id', $id)->pluck('xf1')->first();
        $panelapprove2 = DB::table('caps2ratings')->where('user_id', $panel2)
            ->where('capstone2_id', $id)->pluck('xf1')->first();
        $panelapprove3 = DB::table('caps2ratings')->where('user_id', $panel3)
            ->where('capstone2_id', $id)->pluck('xf1')->first();

         $panelrate1 = DB::table('caps2ratings')->where('user_id', $panel1)
            ->where('capstone2_id', $id)->pluck('total')->first();
        $panelrate2 = DB::table('caps2ratings')->where('user_id', $panel2)
            ->where('capstone2_id', $id)->pluck('total')->first();
        $panelrate3 = DB::table('caps2ratings')->where('user_id', $panel3)
            ->where('capstone2_id', $id)->pluck('total')->first();


        if ($panelapprove1 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else if ($panelapprove1 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else {
            $approvedrate = $approvedrate + $panelrate1;
        }


        if ($panelapprove2 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else if ($panelapprove2 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else {
            $approvedrate = $approvedrate + $panelrate2;
        }

        if ($panelapprove3 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else if ($panelapprove3 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else {
            $approvedrate = $approvedrate + $panelrate3;
        }


        $totalrate =  $approvedrate / 3;

        return response()->json([

            'totalrate'  => $totalrate,

        ], 200);

    }


    public function approved_rate3($id)
    {


        $partial = 0;
        $approved = 0;
        $approvedrate = 0;




        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();

            $panelapprove1 = DB::table('caps3ratings')->where('user_id', $panel1)
            ->where('capstone3_id', $id)->pluck('xf1')->first();
        $panelapprove2 = DB::table('caps3ratings')->where('user_id', $panel2)
            ->where('capstone3_id', $id)->pluck('xf1')->first();
        $panelapprove3 = DB::table('caps3ratings')->where('user_id', $panel3)
            ->where('capstone3_id', $id)->pluck('xf1')->first();

         $panelrate1 = DB::table('caps3ratings')->where('user_id', $panel1)
            ->where('capstone3_id', $id)->pluck('total')->first();
        $panelrate2 = DB::table('caps3ratings')->where('user_id', $panel2)
            ->where('capstone3_id', $id)->pluck('total')->first();
        $panelrate3 = DB::table('caps3ratings')->where('user_id', $panel3)
            ->where('capstone3_id', $id)->pluck('total')->first();


        if ($panelapprove1 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else if ($panelapprove1 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate1;
        } else {
            $approvedrate = $approvedrate + $panelrate1;
        }


        if ($panelapprove2 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else if ($panelapprove2 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate2;
        } else {
            $approvedrate = $approvedrate + $panelrate2;
        }

        if ($panelapprove3 == "APPROVED") {
            $approved = $approved + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else if ($panelapprove3 == "PARTIAL") {
            $partial = $partial + 1;
            $approvedrate = $approvedrate + $panelrate3;
        } else {
            $approvedrate = $approvedrate + $panelrate3;
        }


        $totalrate =  $approvedrate / 3;

        return response()->json([

            'totalrate'  => $totalrate,

        ], 200);
    }
    public function post_approved_rate_status(Request $request, $id)
    {

        $ratestat = Capstone1::find($id);

        $ratestat->xf1 = $request->rating;
        $ratestat->xf2 = $request->status;

        $ratestat->save();
    }

    public function post_approved_rate_status2(Request $request, $id)
    {
        $ratestat2 = Capstone2::find($id);

        $ratestat2->xf1 = $request->rating;
        $ratestat2->xf2 = $request->status;

        $ratestat2->save();
    }

    public function post_approved_rate_status3(Request $request, $id)
    {
        $ratestat3 = Capstone3::find($id);

        $ratestat3->xf1 = $request->rating;
        $ratestat3->xf2 = $request->status;

        $ratestat3->save();
    }
}
