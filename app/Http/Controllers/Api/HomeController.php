<?php

namespace App\Http\Controllers\Api;

use App\User;
use Illuminate\Http\Request;
use Faker\Generator as Faker;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    /**
     * 说明: 返回随机数据
     *
     * @param Faker $faker
     * @return \Illuminate\Http\JsonResponse
     * @author 郭庆
     */
    public function randOrder(Faker $faker)
    {
        $name = str_limit($faker->name,8,'***');
        $result = $faker->randomElement(['完成了', '购买了']);
        $res = $name . '用户刚刚' . $result . '高中测评';
        return $this->sendResponse($res, $res);
    }
}
