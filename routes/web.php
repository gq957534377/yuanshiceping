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

Route::group(['middleware' => ['admin']], function() {
    Route::resource('/admin/project/subjects', 'Project\SubjectController');
    Route::resource('/admin/project/categories', 'Project\CategoryController');
    Route::resource('/admin/project/questions', 'Project\QuestionController');
    Route::resource('/admin/project/interests', 'Project\InterestController');
    Route::resource('/admin/project/abilities', 'Project\AbilityController');
    Route::resource('/admin/project/qualities', 'Project\QualityController');
    Route::resource('/admin/project/personalities', 'Project\PersonalityController');

    Route::get('/admin/project/types', 'Project\TypeController@types');
    Route::get('/admin/import/cat-a', 'Project\ImportQuestionController@catA');
    Route::get('/admin/import/cat-b', 'Project\ImportQuestionController@catB');
    Route::get('/admin/import/cat-c', 'Project\ImportQuestionController@catC');
});


Route::group(['middleware' => ['web']], function () {
    Route::get('/home','Home\IndexController@index');
    Route::get('/wechat','WechatController@index');
    Route::get('/evaluation','Home\EvaluationController@index');
    Route::post('/evaluate','Home\EvaluationController@evaluate');
});
