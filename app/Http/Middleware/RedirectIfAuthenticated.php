<?php

namespace App\Http\Middleware;

use App\Providers\RouteServiceProvider;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @param  string|null  ...$guards
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next, ...$guards)
    {
        $guards = empty($guards) ? [null] : $guards;

        foreach ($guards as $guard) {
            if (Auth::guard($guard)->check()) {
                // return redirect(RouteServiceProvider::DASH);

                if(Auth::user()->hasRole('student')){
                    // return view('studentDashboard');
                    return redirect(RouteServiceProvider::HOME);
          
                }
                elseif(Auth::user()->hasRole('archiver')){
                    // return view('archiverDashboard');
                    return redirect(RouteServiceProvider::HOME);
          
                }elseif(Auth::user()->hasRole('faculty')){
                    
                    // return view('facultyDashboard');
                    return redirect(RouteServiceProvider::DASH);
          
                }elseif(Auth::user()->hasRole('administrator')){
                    // return view('administratorDashboard');
                    return redirect(RouteServiceProvider::DASH);
          
                }
            }
        }

        return $next($request);
    }
}
