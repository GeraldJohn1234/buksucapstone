<?php

namespace App\Http\Controllers;

use App\Models\Capstone;
use App\Models\Topic;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TopicController extends Controller
{
    public function add_topic(Request $request)
    {

        $status = "Available";
        $clientN = "No Data";
        $clientC = "No Data";
        $clientL = "No Data";
        $x = "No Data";
    

        $users = Auth::user()->id;
        $topic = new Topic();

        $topic->title = $request->title;
        $topic->abstract = $request->abstract;
        if ($request->client_company == "" || $request->client_company == null) {
            $topic->client_company = $clientC;
        } else {
            $topic->client_company = $request->client_company;
        }
        
        if ($request->client_name == "" || $request->client_name == null) {
            $topic->client_name = $clientN;
        } else {
            $topic->client_name = $request->client_name;
        }

        if ($request->client_location == "" || $request->client_location == null) {
            $topic->client_location = $clientL;
        } else {
            $topic->client_name = $request->client_name;
        }

        if ($request->xf1 == "" || $request->xf1 == null) {
            $topic->xf1 = $x;
        } else {
            $topic->xf1 = $request->xf1;
        }

        $topic->status = $status;
        $topic->uploader_id = $users;

        $topic->save();
    }

    public function update_topic(Request $request, $id)
    {

        $status = "Available";
        $clientN = "No Data";
        $clientC = "No Data";
        $clientL = "No Data";
        $x = "No Data";
        $id = Auth::user()->id;
        $idd = $request->id;;
        
        $topic = Topic::find($idd);

        $topic->title = $request->title;
        $topic->abstract = $request->abstract;
        if ($request->client_company == "" || $request->client_company == null) {
            $topic->client_company = $clientC;
        } else {
            $topic->client_company = $request->client_company;
        }
        
        if ($request->client_name == "" || $request->client_name == null) {
            $topic->client_name = $clientN;
        } else {
            $topic->client_name = $request->client_name;
        }

        if ($request->client_location == "" || $request->client_location == null) {
            $topic->client_location = $clientL;
        } else {
            $topic->client_name = $request->client_name;
        }

        if ($request->xf1 == "" || $request->xf1 == null) {
            $topic->xf1 = $x;
        } else {
            $topic->xf1 = $request->xf1;
        }
        $topic->save();
    }

    public function get_all_topic(Request $request)
    {

        $data = $request->searching;
        $sortdata = $request->sorting;
        if (Topic::search($data)->get() != null && Topic::search($data)->get() != "") {
            $capstone = Topic::search($data)
                ->get();
            return response()->json(
                [
                    'capstones'  => $capstone,
                ],
                200
            );
        }
        $capstone = Topic::all();
        return response()->json(
            [
                'capstones'  => $capstone,
            ],
            200
        );
    }
    public function get_all_topicsort(Request $request)
    {

        $data = $request->searching;
        $sortdata = $request->sorting;
        if (($sortdata == "client_name" || $sortdata == "title" || $sortdata == "created_at" || $sortdata == "status")) {
            $capstone = Topic::orderBy($sortdata, "asc")->get();
            return response()->json(
                [
                    'capstones'  => $capstone,
                ],
                200
            );
        } else {
            $capstone = Topic::all();
            return response()->json(
                [
                    'capstones'  => $capstone,
                ],
                200
            );
        }
    }
    public function get_topic($id)
    {

        $topic = Topic::find($id);
        return response()->json([

            'topic'  => $topic,

        ], 200);
    }
    public function delete_topic($id)
    {
        $topic = Topic::findOrFail($id);
        $topic->delete();
    }
    public function get_capstone_topic($id)
    {
        $topic = User::find($id);
        return response()->json([

            'uploader'  => $topic,

        ], 200);
    }

    public function add_capstonetopic(Request $request)
    {

        $id = Auth::user()->id;

        $capstone = new Capstone();
        $capstone->groupname = $request->groupname;
        $capstone->title = $request->title;
        $capstone->abstract = $request->abstract;
        $capstone->start_date = $request->start_date;
        $capstone->xf1 = $request->xf1;
        $capstone->xf2 = $request->xf2;
        $capstone->save();


        $capstone->user()->attach($id, ['role_person' => 'student1']);
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


    }


    public function take_topic(Request $request, $id)
    {

        $topic = Topic::find($id);



        $topic->status =$request->status;

        $topic->save();
    }
}
