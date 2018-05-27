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

Route::group(['namespace' => 'Api'], function () {
    Route::post('questions', 'EvaluationController@questions');
    Route::post('answer', 'EvaluationController@answer');
    Route::post('grade', 'EvaluationController@grade');
    Route::post('history', 'EvaluationController@history');
    Route::post('login', 'LoginController@login');
    Route::get('rand_order', 'HomeController@randOrder');
    Route::get('get_banner_news', 'NewsController@getBannerNews');
    Route::resource('news', 'NewsController');
    Route::resource('goods', 'GoodsController');
    Route::get('comments', 'CommentsController@index');
    Route::group(['middleware' => 'auth:api'], function () {
        Route::post('coupons', 'CouponsController@store');
        Route::post('getCoupon/{coupon}', 'CouponsController@getCoupon');
        Route::post('comments', 'CommentsController@store');
        Route::get('my_coupons', 'CouponsController@myCoupons');
        Route::post('users_update', 'UsersController@update');
        Route::resource('orders', 'OrdersController');
    });
    Route::post('wechat_pay/createOrder', 'PayController@createOrder');
});
