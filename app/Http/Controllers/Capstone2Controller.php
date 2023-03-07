<?php

namespace App\Http\Controllers;

use App\Models\Capstone;
use App\Models\Capstone1;
use App\Models\Capstone2;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class Capstone2Controller extends Controller
{
    //
    public function addcapstone2(Request $request, $id)
    {

        $capstone2 = Capstone::find($id)->capstone2;

        $capstone2->status = $request->status;
        $capstone2->capstone_link = $request->capstone_link;

        $capstone2->proto_minutes = $request->proto_minutes;
        $capstone2->proto_matrix = $request->proto_matrix;
        $capstone2->ad_appointment_form = $request->ad_appointment_form;
        $capstone2->gcash_payment = $request->gcash_payment;
        $capstone2->acceptance_ss = $request->acceptance_ss;

        $capstone2->prototype_date = $request->prototype_date;
        $capstone2->xf4 = $request->xf4;

        $capstone2->save();
    }



    public function tryy($id)
    {

        $capstoneid = DB::table('capstone2s')
            ->where('capstone_id', $id)->pluck('id');
        return response()->json([

            'capstonee2'  => $capstoneid,

        ], 200);
    }
    public function get_capstone2($id)
    {
     
        $capston2data = Capstone::find($id)->capstone2;
        return response()->json([

            'capstonee2'  => $capston2data,

        ], 200);
    }
    public function get_capstone2link($id)
    {

        $capston2data = DB::table('capstone2s')
            ->where('capstone_id', $id)->pluck('capstone_link');

        return response()->json([

            'capstonee2'  => $capston2data,

        ], 200);
    }

    public function getcaps2($id)
    {

        $capston1manuscript = Capstone::find($id)->capstone2;
        return response()->json([

            'capstonee2'  => $capston1manuscript,

        ], 200);
    }
    public function get_capstonee2($id)
    {
        $capstone = Capstone2::find($id);
        return response()->json([

            'capstone22222'  => $capstone,

        ], 200);
    }
    public function get_capstonee111($id)
    {
        $capstone = Capstone1::find($id);


        if ($capstone != null) {
           
            return response()->json([

                'capstone11111'  => $capstone,
    
            ], 200);
        }else{
            return response()->json([

                'userCaps'  => null,

            ], 200);
        }



      
    }
}
