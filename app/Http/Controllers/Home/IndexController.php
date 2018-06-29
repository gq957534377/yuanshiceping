<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    public function index()
    {
        return view('home.mobile.index');
    }

    public function product($type)
    {
        switch ($type)
        {
            case 'e':
                return view('home.mobile.evaluation');
            case 'c':
                return view('home.mobile.consultation');
            case 'e-c':
                return view('home.mobile.e_and_c');
            case 'e985':
                return view('home.mobile.e985');
        }
        return response()->json(['ret'=>'ERROR','message'=>'Model Not Found'],404);
    }
}
