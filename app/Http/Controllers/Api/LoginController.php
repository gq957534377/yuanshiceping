<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\LoginRequest;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LoginController extends Controller
{
    /**
     * 说明: 用户登录，没有则注册
     *
     * @param LoginRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @author 郭庆
     */
    public function store(LoginRequest $request)
    {
        // 判断当前用户open_id是否已经存在
        $user = User::where('open_id', $request->open_id)->first();
        // 不存在添加用户、返回私人令牌
        if (empty($user)) {
            $user->head_url = $request->head_url;
            $user->name = $request->name;
            $user->save();

            // 获取令牌
            $token = $user->createToken($request->open_id)->accessToken;
            return $this->sendResponse(['token' => $token], '登陆成功');
        }
        // 存在返回私人令牌、修改资料
        $user = User::create([
            'open_id' => $request->open_id,
            'name' => $request->name,
            'head_url' => $request->head_url,
        ]);

        if (empty($user)) {
            return $this->sendError('登录失败', ['用户注册失败'], 500);
        }

        // 获取令牌
        $token = $user->createToken($request->open_id)->accessToken;
        return $this->sendResponse(['token' => $token], '登陆成功');
    }
}
