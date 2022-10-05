<?php

namespace App\Http\Controllers;

use App\Models\Capstone;
use App\Models\Capstone3;
use Illuminate\Http\Request;

class Capstone3Controller extends Controller
{
    //
    
    public function addcapstone3(Request $request, $id)
    {
            $capstone3 = Capstone::find($id)->capstone3;
            // $try = 'hahhahah';
            // $capstone3->capstone_ocr =$try;

            $capstone3->status = $request->status;
            $capstone3->final_docu = $request->final_docu;
            $capstone3->proto_minutes = $request->proto_minutes;
            $capstone3->proto_matrix = $request->proto_matrix;
            $capstone3->gcash_payment = $request->gcash_payment;
            $capstone3->acceptance_ss = $request->acceptance_ss;
            $capstone3->ppt = $request->ppt;
            $capstone3->software_demo = $request->software_demo;
            $capstone3->githublink = $request->githublink;
            $capstone3->final_date = $request->final_date;
   
            $capstone3->save();
    }
    
    // $table->string('');
    // $table->string('')->nullable();
    // $table->string('')->nullable();
    // $table->string('')->nullable();
    // $table->string('')->nullable();
    // $table->string('')->nullable();
    // $table->string('')->nullable();
    // $table->longText('')->nullable(); 


    public function get_capstonee3($id)
    {
        $capstone = Capstone3::find($id);
        return response()->json([

            'capstone33333'  => $capstone,

        ], 200);
    }
    
}
