<?php

use App\Http\Controllers\Caps1ratingController;
use App\Http\Controllers\Caps2ratingController;
use App\Http\Controllers\Caps3ratingController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CapstoneController;
use App\Http\Controllers\Capstone1Controller;
use App\Http\Controllers\Capstone2Controller;
use App\Http\Controllers\Capstone3Controller;
use App\Http\Controllers\CapstonedashboardController;
use App\Http\Controllers\TopicController;
use App\Models\Caps1rating;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
}) ;


Route::get('/get_one_user/{id}', [UserController::class,'get_one_user']);
Route::get('/get_all_user', [UserController::class,'get_all_user']);
Route::post('/add_user', [UserController::class,'add_user']);
Route::get('/get_edit_user/{id}', [UserController::class,'get_edit_user']);
Route::post('/update_user/{id}', [UserController::class,'update_user']);

Route::get('/myprofile', [UserController::class,'myprofile']);
Route::post('/myprofile_update', [UserController::class,'myprofile_update']);

Route::get('/delete_user/{id}', [UserController::class,'delete_user']);

Route::get('/get_all_student_user', [UserController::class,'get_all_student_user']);
Route::get('/get_all_admin_user', [UserController::class,'get_all_admin_user']);
Route::get('/get_all_archiver_user', [UserController::class,'get_all_archiver_user']);

Route::get('/get_all_panel_user', [UserController::class,'get_all_panel_user']);
Route::get('/get_all_secretary_user', [UserController::class,'get_all_secretary_user']);
Route::get('/get_all_adviser_user', [UserController::class,'get_all_adviser_user']);
Route::get('/get_all_instructor_user', [UserController::class,'get_all_instructor_user']);


Route::post('/add_capstone_project', [CapstoneController::class,'add_capstone_project']); 


Route::get('/get_all_audit', [CapstoneController::class,'get_all_audit']);

Route::get('/get_all_capstone', [CapstoneController::class,'get_all_capstone']);
Route::get('/get_all_capstonesort', [CapstoneController::class,'get_all_capstonesort']);
Route::get('/get_all', [CapstoneController::class,'get_all']);
Route::get('/get_all_capstone/{id}', [CapstoneController::class,'get_all_capstone']);

Route::get('/advisee_count_not_done/{id}', [CapstoneController::class,'advisee_count_not_done']);
Route::get('/advisee_count_done/{id}', [CapstoneController::class,'advisee_count_done']);
Route::get('/secretarys_count/{id}', [CapstoneController::class,'secretarys_count']);
Route::get('/panels_count/{id}', [CapstoneController::class,'panels_count']);

Route::post('/store_dashboard', [CapstonedashboardController::class,'store_dashboard']);//this is for the dash board  store_dashboard     
Route::get('/get_dashboard', [CapstonedashboardController::class,'get_dashboard']);

Route::get('/get_pie_unimplement', [CapstoneController::class,'get_pie_unimplement']);
Route::get('/get_pie_deploy', [CapstoneController::class,'get_pie_deploy']);
Route::get('/get_pie_underdevelop', [CapstoneController::class,'get_pie_underdevelop']);



Route::get('/get_capstone/{id}', [CapstoneController::class,'get_capstone']);
Route::get('/get_capstone_adviser_view/{id}', [CapstoneController::class,'get_capstone_adviser_view']);

Route::get('/get_capstonee/{id}', [CapstoneController::class,'get_capstonee']);

Route::get('/get_capstone_student1/{id}', [CapstoneController::class,'get_capstone_student1']);
Route::get('/get_capstone_student2/{id}', [CapstoneController::class,'get_capstone_student2']);
Route::get('/get_capstone_student3/{id}', [CapstoneController::class,'get_capstone_student3']);
Route::get('/get_capstone_student4/{id}', [CapstoneController::class,'get_capstone_student4']);
Route::get('/get_capstone_panels1/{id}', [CapstoneController::class,'get_capstone_panels1']);
Route::get('/get_capstone_panels2/{id}', [CapstoneController::class,'get_capstone_panels2']);
Route::get('/get_capstone_panels3/{id}', [CapstoneController::class,'get_capstone_panels3']);
Route::get('/get_capstone_adviser/{id}', [CapstoneController::class,'get_capstone_adviser']);
Route::get('/get_capstone_coAdviser/{id}', [CapstoneController::class,'get_capstone_coAdviser']);
Route::get('/get_capstone_instructor/{id}', [CapstoneController::class,'get_capstone_instructor']);
Route::get('/get_capstone_secretarys/{id}', [CapstoneController::class,'get_capstone_secretarys']);
Route::get('/delete_capstone/{id}', [CapstoneController::class,'delete_capstone']);

Route::post('/create_capstone_proj/{id}', [CapstoneController::class,'create_capstone_proj']);

Route::post('/addcapstone2/{id}', [Capstone2Controller::class,'addcapstone2']); 
Route::get('/get_capstone2/{id}', [Capstone2Controller::class,'get_capstone2']);
Route::get('/get_capstone2link/{id}', [Capstone2Controller::class,'get_capstone2link']); 
Route::post('/update_capstone/{id}', [CapstoneController::class,'update_capstone']);


Route::get('/get_capstone_inst/{id}', [CapstoneController::class,'get_capstone_inst']);


Route::post('/add_capstonee1', [Capstone1Controller::class,'add_capstonee1']);
Route::get('/get_capstonee1', [Capstone1Controller::class,'get_capstonee1']);
Route::get('/panel_rate_check/{id}', [Capstone1Controller::class,'panel_rate_check']);


Route::post('/addcapstone1/{id}', [Capstone1Controller::class,'addcapstone1']);
Route::get('/getcapstone1/{id}', [Capstone1Controller::class,'getcapstone1']);
Route::get('/getcaps123/{id}', [Capstone1Controller::class,'getcaps123']); 

Route::get('/getcaps2/{id}', [Capstone1Controller::class,'getcaps2']); 
Route::get('/getcaps3/{id}', [Capstone1Controller::class,'getcaps3']); 

Route::get('/getcaps2/{id}', [Capstone2Controller::class,'getcaps2']);

Route::post('/capstone_instructor1/{id}', [Capstone1Controller::class,'capstone_instructor1']);
Route::post('/capstone_instructor2/{id}', [Capstone1Controller::class,'capstone_instructor2']);
Route::post('/capstone_instructor3/{id}', [Capstone1Controller::class,'capstone_instructor3']);

Route::get('/get_capstone_instructor1/{id}', [Capstone1Controller::class,'get_capstone_instructor1']);
Route::get('/get_capstone_instructor2/{id}', [Capstone1Controller::class,'get_capstone_instructor2']);
Route::get('/get_capstone_instructor3/{id}', [Capstone1Controller::class,'get_capstone_instructor3']);


Route::get('/get_capstonee111/{id}', [Capstone2Controller::class,'get_capstonee111']);   
Route::get('/get_capstonee2/{id}', [Capstone2Controller::class,'get_capstonee2']);   

Route::post('/addcapstone3/{id}', [Capstone3Controller::class,'addcapstone3']);
Route::get('/get_capstonee3/{id}', [Capstone3Controller::class,'get_capstonee3']);
Route::post('/add_rating/{id}', [Caps1ratingController::class,'add_rating']);
Route::get('/get_rating/{id}', [Caps1ratingController::class,'get_rating']);
Route::post('/create_rate/{id}', [Caps1ratingController::class,'create_rate']);

Route::post('/add_rating2/{id}', [Caps2ratingController::class,'add_rating2']);
Route::get('/get_rating2/{id}', [Caps2ratingController::class,'get_rating2']);
Route::post('/create_rate2/{id}', [Caps2ratingController::class,'create_rate2']);

Route::post('/add_rating3/{id}', [Caps3ratingController::class,'add_rating3']);
Route::get('/get_rating3/{id}', [Caps3ratingController::class,'get_rating3']);
Route::post('/create_rate3/{id}', [Caps3ratingController::class,'create_rate3']);

Route::get('/get_all_capstone_search/{id}', [CapstoneController::class,'get_all_capstone_search']);
Route::get('/get_all_capstone_search', [CapstoneController::class,'get_all_capstone_search']);



Route::get('/approved_rate/{id}', [CapstonedashboardController::class,'approved_rate']);   
Route::get('/approved_rate_status/{id}', [CapstonedashboardController::class,'approved_rate_status']);   

Route::get('/approved_rate2/{id}', [CapstonedashboardController::class,'approved_rate2']);   
Route::get('/approved_rate_status2/{id}', [CapstonedashboardController::class,'approved_rate_status2']);   

Route::get('/approved_rate3/{id}', [CapstonedashboardController::class,'approved_rate3']);   
Route::get('/approved_rate_status3/{id}', [CapstonedashboardController::class,'approved_rate_status3']); 


Route::post('/post_approved_rate_status/{id}', [CapstonedashboardController::class,'post_approved_rate_status']);
Route::post('/post_approved_rate_status2/{id}', [CapstonedashboardController::class,'post_approved_rate_status2']);
Route::post('/post_approved_rate_status3/{id}', [CapstonedashboardController::class,'post_approved_rate_status3']);

Route::get('/get_rate_panel1/{id}', [CapstonedashboardController::class,'get_rate_panel1']);
Route::get('/get_rate_panel2/{id}', [CapstonedashboardController::class,'get_rate_panel2']);
Route::get('/get_rate_panel3/{id}', [CapstonedashboardController::class,'get_rate_panel3']);

Route::get('/get_rate_panel12/{id}', [CapstonedashboardController::class,'get_rate_panel12']);
Route::get('/get_rate_panel22/{id}', [CapstonedashboardController::class,'get_rate_panel22']);
Route::get('/get_rate_panel32/{id}', [CapstonedashboardController::class,'get_rate_panel32']);

Route::get('/get_rate_panel13/{id}', [CapstonedashboardController::class,'get_rate_panel13']);
Route::get('/get_rate_panel23/{id}', [CapstonedashboardController::class,'get_rate_panel23']);
Route::get('/get_rate_panel33/{id}', [CapstonedashboardController::class,'get_rate_panel33']);

Route::get('/project_check', [CapstoneController::class,'project_check']);

Route::post('/add_topic', [TopicController::class,'add_topic']);
Route::post('/update_topic/{id}', [TopicController::class,'update_topic']);
Route::get('/get_all_topicsort', [TopicController::class,'get_all_topicsort']);
Route::get('/get_all_topic', [TopicController::class,'get_all_topic']);
Route::get('/delete_topic/{id}', [TopicController::class,'delete_topic']);
Route::get('/get_topic/{id}', [TopicController::class,'get_topic']);
Route::get('/get_capstone_topic/{id}', [TopicController::class,'get_capstone_topic']);
Route::post('/add_capstonetopic', [TopicController::class,'add_capstonetopic']); 
Route::post('/take_topic/{id}', [TopicController::class,'take_topic']); 

Route::get('/getadviseesort', [CapstoneController::class,'getadviseesort']);
Route::get('/get_all_capstone_advisee', [CapstoneController::class,'get_all_capstone_advisee']);
Route::get('/get_all_capstone_panel', [CapstoneController::class,'get_all_capstone_panel']);
Route::get('/get_all_capstone_instructorr', [CapstoneController::class,'get_all_capstone_instructorr']);
Route::get('/get_all_capstone_secretary', [CapstoneController::class,'get_all_capstone_secretary']);

Route::get('/get_all_capstone_instructo', [CapstoneController::class,'get_all_capstone_instructo']);
Route::post('/save_instructor', [CapstoneController::class,'save_instructor']);
Route::post('/caps1minutes/{id}', [CapstoneController::class,'caps1minutes']);
Route::post('/caps2minutes/{id}', [CapstoneController::class,'caps2minutes']);
Route::post('/caps3minutes/{id}', [CapstoneController::class,'caps3minutes']);
Route::get('/checkproponent/{id}', [CapstoneController::class,'checkproponent']);

Route::get('/get_capstone_check/{id}', [CapstoneController::class,'get_capstone_check']);



Route::get('/get_all_student_search', [UserController::class,'get_all_student_search']);
Route::get('/get_all_student_sort', [UserController::class,'get_all_student_sort']);

Route::get('/get_all_faculty_search', [UserController::class,'get_all_faculty_search']);
Route::get('/get_all_faculty_sort', [UserController::class,'get_all_faculty_sort']);

Route::get('/get_all_admin_search', [UserController::class,'get_all_admin_search']);
Route::get('/get_all_admin_sort', [UserController::class,'get_all_admin_sort']);

Route::get('/showpdf', [CapstoneController::class,'showpdf']);


Route::get('/tryy/{id}', [Capstone2Controller::class,'tryy']);       
Route::get('/testrate/{id}', [CapstoneController::class,'testrate']);
Route::get('/getadvisee', [CapstoneController::class,'getadvisee']);

Route::get('/audit_capstone', [CapstoneController::class,'audit_capstone']);
Route::get('/audit_capstone1', [CapstoneController::class,'audit_capstone1']);
Route::get('/audit_capstone2', [CapstoneController::class,'audit_capstone2']);
Route::get('/audit_capstone3', [CapstoneController::class,'audit_capstone3']);
Route::get('/audit_user', [CapstoneController::class,'audit_user']);
