<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('news', 'NewsController');
    $router->post('uploadNews', 'NewsController@uploadNews');
    $router->resource('notices', 'NoticesController');

    $router->resource('users', 'UserController');
    // 禁用用户
    $router->get('users_disable/{user}', 'UserController@disable');
    // 启用用户
    $router->get('users_able/{user}', 'UserController@able');

    $router->resource('goods', 'GoodsController');

    $router->resource('orders', 'OrdersController');

    $router->resource('comments', 'CommentsController');

    $router->resource('goodsCategories', 'GoodsCategoriesController');

    $router->resource('sowingmap', 'SowingMapController');

});
