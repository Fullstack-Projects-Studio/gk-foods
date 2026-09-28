<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
   public function index()
    {        
        return view('admin.dashbord');
    }
    public function about()
    {        
        return view('layouts.aboutUs');
    }    
    public function contact()
    {        
        return view('contact_us');
    }
}
