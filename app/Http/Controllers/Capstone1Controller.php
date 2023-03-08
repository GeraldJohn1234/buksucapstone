<?php

namespace App\Http\Controllers;

use App\Models\Capstone;
use App\Models\Capstone1;
use App\Models\Capstone2;
use App\Models\Ocrstorage;
use App\Models\Partialstorage;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Capstone1Controller extends Controller
{

     public function add_capstonee1(Request $request)
    {
            $capstone1 = Partialstorage::find(1);
            $capstone1->ocr = $request->texttext;
       
            $capstone1->save();
    }
    public function get_capstonee1()
    {
        $capstone = Partialstorage::find(1);
        return response()->json([

            'capstone11111'  => $capstone,

        ], 200);
    }
    public function panel_rate_check($id)
    {
        $count = 0;

        $idAuth = Auth::user()->id;
        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
        ->where('capstone_id', $id)->pluck('user_id')->first();
        if($panel1==$idAuth){
            $count = $count +1;
        }
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
        ->where('capstone_id', $id)->pluck('user_id')->first();
        if($panel2==$idAuth){
            $count = $count +1;
        }
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
        ->where('capstone_id', $id)->pluck('user_id')->first();
        if($panel3==$idAuth){
            $count = $count +1;
        }

        if($count>=1){
            $users = 1;

        }else{
            $users = 2;
        }

        return $users;
    }


    

   
    

    public function getcaps123($id)
    {
        $capston1manuscript = Capstone::find($id)->capstone1;
        return response()->json([

            'capstonee1'  => $capston1manuscript,

        ], 200);
    }

    public function getcaps2($id)
    {
        $capston1manuscript = Capstone::find($id)->capstone2;
        return response()->json([

            'capstonee1'  => $capston1manuscript,

        ], 200);
    }


    public function getcaps3($id)
    {
        $capston1manuscript = Capstone::find($id)->capstone3;
        return response()->json([

            'capstonee1'  => $capston1manuscript,

        ], 200);
    }



    public function addcapstone1(Request $request, $id)
    {
            $capstone1 = Capstone::find($id)->capstone1;
 
            $capstone1->status = $request->status;
            $capstone1->revise_manuscript = $request->revise_manuscript;
            $capstone1->action_done = $request->action_done;
            $capstone1->mou = $request->mou;
            $capstone1->title_proposal_form = $request->title_proposal_form;
            $capstone1->adviser_appointmentform = $request->adviser_appointmentform;
            $capstone1->ppt = $request->ppt;
            $capstone1->recorded_proposal = $request->recorded_proposal;
            $capstone1->minutes = $request->minutes;
            $capstone1->gcash_ss_file = $request->gcash_ss_file;
            $capstone1->acceptance_of_panel = $request->acceptance_of_panel;
            $capstone1->propose_date = $request->propose_date;
            $capstone1->xf4 = $request->xf4;
   
            $capstone1->save();
    }

    public function capstone_instructor1(Request $request, $id)
    {
            $capstone1 = Capstone::find($id)->capstone1;

            $capstone1->xf3 = $request->instructor;
   
            $capstone1->save();
    }
    public function capstone_instructor2(Request $request, $id)
    {
            $capstone2 = Capstone::find($id)->capstone2;

            $capstone2->xf3 = $request->instructor;
   
            $capstone2->save();
    }
    public function capstone_instructor3(Request $request, $id)
    {
            $capstone3 = Capstone::find($id)->capstone3;

            $capstone3->xf3 = $request->instructor;
   
            $capstone3->save();
    }


    public function get_capstone_instructor1($id)
    {

        $instructor_no = DB::table('capstone1s')
        ->where('capstone_id', $id)->pluck('xf3')->first();

        return response()->json([

            'instruct'  => $instructor_no,

        ], 200);
    }
    public function get_capstone_instructor2($id)
    {

        $instructor_no = DB::table('capstone2s')
        ->where('capstone_id', $id)->pluck('xf3')->first();


        return response()->json([

            'instruct'  => $instructor_no,

        ], 200);
    }
    public function get_capstone_instructor3($id)
    {

        $instructor_no = DB::table('capstone3s')
        ->where('capstone_id', $id)->pluck('xf3')->first();

        return response()->json([

            'instruct'  => $instructor_no,

        ], 200);
    }

 
}