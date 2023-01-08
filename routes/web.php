<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UserController;
use App\Models\Capstone;
use App\Models\User;
// use App\Http\Controllers\Auth;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
// Route::get('Auth');

Route::get('/tryyyy', function () {
    // $article =  Capstone::with('audits')->get();
    // // return Capstone::first();
    // return $article->audits()->latest()->first();
    $article = Capstone::first();


return  $article->audits;
// Get latest Audit
// return $article->audits()->latest()->first();

// Get first Audit
// return $article->audits()->first();

// Get last Audit
// return $article->audits()->latest()->first();

// Get Audit by id
// return $article->audits()->find(4);

// var_dump($audit->getMetadata());
});


Route::group(['middleware' => ['auth']], function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');
    Route::get('/profile', [DashboardController::class, 'index'])->name('dashboard');
    // viewstudent
    Route::get('/adviser', [DashboardController::class, 'whatRole']);
    Route::get('/audit', [DashboardController::class, 'whatRole']);

    Route::get('/capslist', [DashboardController::class, 'whatRole']);

    Route::get('/instructor', [DashboardController::class, 'whatRole']);
    Route::get('/panel', [DashboardController::class, 'whatRole']);
    Route::get('/profile', [DashboardController::class, 'whatRole']);
    Route::get('/secretary', [DashboardController::class, 'whatRole']);
    Route::get('/student', [DashboardController::class, 'whatRole']);
    Route::get('/topic', [DashboardController::class, 'whatRole']);
    Route::get('/admin', [DashboardController::class, 'whatRole']);
    Route::get('/archiver', [DashboardController::class, 'whatRole']);
    Route::get('/project', [DashboardController::class, 'whatRole']);

    Route::get('/create', [DashboardController::class, 'whatRole']);
    Route::get('/update', [DashboardController::class, 'whatRole']);
    Route::get('/view', [DashboardController::class, 'whatRole']);
    Route::get('/viewstudent/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/viewfaculty/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/viewcapsecretry/{pathMatch}', [DashboardController::class, 'whatRole']);

    Route::get('/update/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/view/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/profile/{pathMatch}', [DashboardController::class, 'whatRole']);

    Route::post('/add_user', [UserController::class, 'add_user']);

    Route::get('/capstone1', [DashboardController::class, 'whatRole']);
    Route::get('/capstone2', [DashboardController::class, 'whatRole']);
    Route::get('/capstone3', [DashboardController::class, 'whatRole']);

    Route::get('/caps1edit', [DashboardController::class, 'whatRole']);
    Route::get('/caps2edit', [DashboardController::class, 'whatRole']);
    Route::get('/caps3edit', [DashboardController::class, 'whatRole']);

    Route::get('/editcap', [DashboardController::class, 'whatRole']);
    Route::get('/viewcap', [DashboardController::class, 'whatRole']);
    Route::get('/ocrpages/{pathMatch}', [DashboardController::class, 'whatRole']);

    Route::get('/viewcap/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/editcap/{pathMatch}', [DashboardController::class, 'whatRole']);

    Route::get('/capstone1/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/capstone2/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/capstone3/{pathMatch}', [DashboardController::class, 'whatRole']);

    Route::get('/caps1edit/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/caps2edit/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/caps3edit/{pathMatch}', [DashboardController::class, 'whatRole']);

    Route::get('/capsdocs/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/ocrdocuments/{pathMatch}', [DashboardController::class, 'whatRole']);

    Route::get('/proposalform/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/rate/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/rate2/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/rate3/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/createsuggestion', [DashboardController::class, 'whatRole']);
    Route::get('/taketopic', [DashboardController::class, 'whatRole']);
    Route::get('/noproject', [DashboardController::class, 'whatRole']);


    Route::get('/gitlink/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/updatetopic/{pathMatch}', [DashboardController::class, 'whatRole']);
    Route::get('/taketopic/{pathMatch}', [DashboardController::class, 'whatRole']);

    Route::get('/advisee', [DashboardController::class, 'whatRole']);
    // Route::get('/take_topic/{pathMatch}', [DashboardController::class, 'whatRole']);
//updatetopic  taketopic  take_topic advisee
   
});

Route::get('/', function () {
    return view('auth.login');
});


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

require __DIR__ . '/auth.php';
