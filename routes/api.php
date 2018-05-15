<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('test', function () {
    return 'hello world';
});

Route::group(['namespace' => 'Api'], function () {
    Route::post('questions', 'EvaluationController@questions');
    Route::post('login', 'LoginController@login');
    Route::group(['middleware' => 'auth:api'], function () {
        Route::post('coupons', 'CouponsController@store');
        Route::post('getCoupon/{coupon}', 'CouponsController@getCoupon');
        Route::get('my_coupons', 'CouponsController@myCoupons');
    });
});


