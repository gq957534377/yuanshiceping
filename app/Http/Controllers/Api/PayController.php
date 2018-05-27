<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;

class PayController extends Controller
{
    //
    public function createOrder(Request $request)
    {
        $user = Auth::guard('api')->user();
        dd($user);
    }
}
