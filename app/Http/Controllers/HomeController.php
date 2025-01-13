<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
class HomeController extends Controller
{
    public function index()
    {
        
        if(Auth::user()->can('inactive-vendor')) {
            return redirect()->route('vendor.update');
  
        }elseif(Auth::user()->can('active-vendor')) {
            return view('vendor.dashboard');     
        }else
        {
            return view('dashboard');
        }
         
       
    }
}
