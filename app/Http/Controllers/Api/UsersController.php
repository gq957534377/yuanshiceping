<?php

namespace App\Http\Controllers\Api;

use App\Http\Requests\Api\UsersRequest;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller
{
    /**
     * 说明: 用户提交信息
     *
     * @param UsersRequest $request
     * @return \Illuminate\Http\JsonResponse
     * @author 郭庆
     */
    public function update(UsersRequest $request)
    {
        $user = Auth::guard('api')->user();
        User::where('id', $user->id)->update([
            'name' => $request->name,
            'sex' => $request->sex,
            'tel' => $request->tel,
            'address' => $request->address,
        ]);
        return $this->sendResponse('修改成', '修改成功');
    }
}
