<?php

namespace App\Http\Controllers;

use App\Models\Caps1rating;
use App\Models\Caps2rating;
use App\Models\Caps3rating;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use phpDocumentor\Reflection\PseudoTypes\True_;

class Caps1ratingController extends Controller
{

    // PANELIST RATE A PROJECT CAPSTONE 1
    public function add_rating(Request $request, $id)
    {
        $idauth = Auth::user()->id;


        $panelid = DB::table('caps1ratings')->where('capstone1_id', $id)
            ->where('user_id', $idauth)->pluck('id')->first();

        $checkuser = DB::table('caps1ratings')->where('id', $panelid)->count() > 0;

        if ($checkuser) {


            $ratecaps11 = Caps1rating::find($panelid);

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

            $ratecaps1 = new Caps1rating();

            $ratecaps1->capstone1_id = $id;
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

    public function get_rating($id)
    {
        $idauth = Auth::user()->id;
        $panelid = DB::table('caps1ratings')->where('capstone1_id', $id)
            ->where('user_id', $idauth)->pluck('id')->first();

        $panelrating = Caps1rating::find($panelid);
        return response()->json([

            'ratecaps' => $panelrating,

        ], 200);
    }

    // CHECK IF TE CAPSTONE HAS RATING OR ELSE CREATE A CAPSTONE RATING  
    public function create_rate($id)
    {


        $status1 = "PENDING";
        $total = 0;

        $panel1 = DB::table('capstone_user')->where('role_person', 'panels1')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel2 = DB::table('capstone_user')->where('role_person', 'panels2')
            ->where('capstone_id', $id)->pluck('user_id')->first();
        $panel3 = DB::table('capstone_user')->where('role_person', 'panels3')
            ->where('capstone_id', $id)->pluck('user_id')->first();


        $check1 = DB::table('caps1ratings')->where('capstone1_id', $id)->where('user_id', $panel1)->count() < 1;
        $check2 = DB::table('caps1ratings')->where('capstone1_id', $id)->where('user_id', $panel2)->count() < 1;
        $check3 = DB::table('caps1ratings')->where('capstone1_id', $id)->where('user_id', $panel3)->count() < 1;

        $check12 = DB::table('caps2ratings')->where('capstone2_id', $id)->where('user_id', $panel1)->count() < 1;
        $check22 = DB::table('caps2ratings')->where('capstone2_id', $id)->where('user_id', $panel2)->count() < 1;
        $check32 = DB::table('caps2ratings')->where('capstone2_id', $id)->where('user_id', $panel3)->count() < 1;

        $check13 = DB::table('caps3ratings')->where('capstone3_id', $id)->where('user_id', $panel1)->count() < 1;
        $check23 = DB::table('caps3ratings')->where('capstone3_id', $id)->where('user_id', $panel2)->count() < 1;
        $check33 = DB::table('caps3ratings')->where('capstone3_id', $id)->where('user_id', $panel3)->count() < 1;


        if ($check1) {
            $idauth1 = $panel1;

            $ratecaps1 = new Caps1rating();
            $ratecaps1->capstone1_id = $id;
            $ratecaps1->user_id = $idauth1;
            $ratecaps1->xf1 = $status1;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
        if ($check2) {
            $idauth2 = $panel2;

            $ratecaps1 = new Caps1rating();
            $ratecaps1->capstone1_id = $id;
            $ratecaps1->user_id = $idauth2;
            $ratecaps1->xf1 = $status1;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
        if ($check3) {
            $idauth3 = $panel3;

            $ratecaps1 = new Caps1rating();
            $ratecaps1->capstone1_id = $id;
            $ratecaps1->user_id = $idauth3;
            $ratecaps1->xf1 = $status1;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
        if ($check12) {
            $idauth12 = $panel1;

            $ratecaps1 = new Caps2rating();
            $ratecaps1->capstone2_id = $id;
            $ratecaps1->user_id = $idauth12;
            $ratecaps1->xf1 = $status1;
            $ratecaps1->total = $total;

            $ratecaps1->save();
        }
        if ($check22) {
            $idauth22 = $panel2;

            $ratecaps1 = new Caps2rating();
            $ratecaps1->capstone2_id = $id;
            $ratecaps1->user_id = $idauth22;
            $ratecaps1->xf1 = $status1;
            $ratecaps1->total = $total;

            $ratecaps1->save();
        }
        if ($check32) {
            $idauth13 = $panel3;

            $ratecaps1 = new Caps2rating();
            $ratecaps1->capstone2_id = $id;
            $ratecaps1->user_id = $idauth13;
            $ratecaps1->xf1 = $status1;
            $ratecaps1->total = $total;

            $ratecaps1->save();
        }

        if ($check13) {
            $idauth13 = $panel1;

            $ratecaps1 = new Caps3rating();
            $ratecaps1->capstone3_id = $id;
            $ratecaps1->user_id = $idauth13;
            $ratecaps1->xf1 = $status1;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
        if ($check23) {
            $idauth23 = $panel2;

            $ratecaps1 = new Caps3rating();
            $ratecaps1->capstone3_id = $id;
            $ratecaps1->user_id = $idauth23;
            $ratecaps1->xf1 = $status1;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
        if ($check33) {
            $idauth33 = $panel3;

            $ratecaps1 = new Caps3rating();
            $ratecaps1->capstone3_id = $id;
            $ratecaps1->user_id = $idauth33;
            $ratecaps1->xf1 = $status1;
            $ratecaps1->total = $total;
            $ratecaps1->save();
        }
    }
}
