<?php

namespace App\Http\Controllers;

use App\Models\Caps2rating;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Caps2ratingController extends Controller
{
    //
    public function add_rating2(Request $request, $id)
    {
        $idauth = Auth::user()->id;


        $panelid = DB::table('Caps2ratings')->where('capstone2_id', $id)
            ->where('user_id', $idauth)->pluck('id')->first();
           
            // $checkuser = DB::table('Caps2ratings')->where('user_id', $idauth)->count() < 1;
            $checkuser = DB::table('Caps2ratings')->where('id', $panelid)->count() > 0;

        if ($checkuser) {
            // $rate1 = DB::table('Caps2ratings')->where('capstone2_id', $id)->count() < 1;

            $ratecaps11 = Caps2rating::find($panelid);

            $ratecaps11->background = $request->background;
            $ratecaps11->backgrounds = $request->backgrounds;
            $ratecaps11->obj1 = $request->obj1;
            $ratecaps11->obj2 = $request->obj2;
            $ratecaps11->obj3 = $request->obj3;
            $ratecaps11->s1 = $request->s1;
            $ratecaps11->s2 = $request->s2;
            $ratecaps11->sc = $request->sc;
            $ratecaps11->df = $request->df;
            $ratecaps11->lr1 = $request->lr1;
            $ratecaps11->lr2 = $request->lr2;
            $ratecaps11->meth1 = $request->meth1;
            $ratecaps11->meth2 = $request->meth2;
            $ratecaps11->meth3 = $request->meth3;
            $ratecaps11->ref1 = $request->ref1;
            $ratecaps11->format = $request->format;
            $ratecaps11->oralCom = $request->oralCom;
            $ratecaps11->ppt = $request->ppt;
            $ratecaps11->attire = $request->attire;
            $ratecaps11->resp = $request->resp;
            $ratecaps11->total = $request->total;
            $ratecaps11->xf1 = $request->xf1;
            $ratecaps11->xf2 = $request->xf2;
            $ratecaps11->save();
  
        } else {
 
            $ratecaps1 = new Caps2rating();

            $ratecaps1->capstone2_id = $id;
            $ratecaps1->user_id = $idauth;
            $ratecaps1->background = $request->background;
            $ratecaps1->backgrounds = $request->backgrounds;
            $ratecaps1->obj1 = $request->obj1;
            $ratecaps1->obj2 = $request->obj2;
            $ratecaps1->obj3 = $request->obj3;
            $ratecaps1->s1 = $request->s1;
            $ratecaps1->s2 = $request->s2;
            $ratecaps1->sc = $request->sc;
            $ratecaps1->df = $request->df;
            $ratecaps1->lr1 = $request->lr1;
            $ratecaps1->lr2 = $request->lr2;
            $ratecaps1->meth1 = $request->meth1;
            $ratecaps1->meth2 = $request->meth2;
            $ratecaps1->meth3 = $request->meth3;
            $ratecaps1->ref1 = $request->ref1;
            $ratecaps1->format = $request->format;
            $ratecaps1->oralCom = $request->oralCom;
            $ratecaps1->ppt = $request->ppt;
            $ratecaps1->attire = $request->attire;
            $ratecaps1->resp = $request->resp;
            $ratecaps1->total = $request->total;
            $ratecaps1->xf1 = $request->xf1;
            $ratecaps1->xf2 = $request->xf2;
            $ratecaps1->save();
        }
    }

    public function get_rating2($id)
    {
        $idauth = Auth::user()->id;
        $panelid = DB::table('Caps2ratings')->where('capstone2_id', $id)
            ->where('user_id', $idauth)->pluck('id')->first();

        $panelrating = Caps2rating::find($panelid);
        return response()->json([

            'ratecaps'  => $panelrating,

        ], 200);
    }
    // create_rate

    // public function create_rate2($id)
    // {
    //     // $capstoneid1 = DB::table('capstone1s')->where('capstone_id', $id)->count() < 1;

    //     $idauth = Auth::user()->id;

    //     $panelid = DB::table('Caps2ratings')
    //     ->where('user_id', $idauth)->where('capstone2_id', $id)->pluck('id')->first();
    //     $checkuser = DB::table('Caps2ratings')->where('id', $panelid)->count() < 1;


    //     $status1 = "PENDING";
    //     $ratenum =0;



    //     if ($checkuser) {
    //         $ratecaps1 = new Caps2rating();
    //         $ratecaps1->capstone2_id = $id;
    //         $ratecaps1->user_id = $idauth;
    //         $ratecaps1->xf1 = $status1;
    //         $ratecaps1->total = $ratenum;
    //         $ratecaps1->save();
    //     }

    // }
}
