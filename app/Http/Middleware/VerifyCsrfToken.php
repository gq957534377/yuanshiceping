<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array
     */
    protected $except = [
        '/wechat',
        '/wechat_notify', // 微信支付回掉
        '/wechat_login/redirect_uri' // 微信登录回掉
    ];
}
