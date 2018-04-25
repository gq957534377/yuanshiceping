<?php

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

Route::get('/', function () {
    return view('welcome');
});

Route::group(['middleware' => ['admin','form']], function() {
    Route::resource('/admin/project/subjects', 'Project\SubjectController');
    Route::resource('/admin/project/categories', 'Project\CategoryController');
    Route::resource('/admin/project/questions', 'Project\QuestionController');
    Route::resource('/admin/project/interests', 'Project\InterestController');
});
