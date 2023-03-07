<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class DashboardController extends Controller
{
    //
    public function index(){
        
        if(Auth::user()->hasRole('student')){
            return view('studentDashboard');
  
        }elseif(Auth::user()->hasRole('archiver')){
            return view('archiverDashboard');
  
        }elseif(Auth::user()->hasRole('faculty')){
            
            return view('facultyDashboard');
  
        }elseif(Auth::user()->hasRole('administrator')){
            return view('administratorDashboard');
  
        }
    }
    public function whatRole(){
        if (Auth::check()) {
            if(Auth::user()->hasRole('student')){
                return view('studentDashboard');
      
            }elseif(Auth::user()->hasRole('archiver')){
                return view('archiverDashboard');
      
            }elseif(Auth::user()->hasRole('faculty')){
                return view('facultyDashboard');
      
            }elseif(Auth::user()->hasRole('administrator')){
                return view('administratorDashboard');
      
            }
        }

    }
}