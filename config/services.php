<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],

    'media' => [
        // guoqing
//        'app_id' => 'wxffa5d8b8abc258f6',
//        'secret' => 'ebb2a3a749d71047f45d4d36fc5b2f0a',
        'app_id' => 'wx42b0c68b40525f96',
        'secret' => 'a83f4652a42d8531e48cf258ecc13158'
    ],
    // 微信开放平台
    'wechatPc' => [
        'app_id' => 'wx047532f5c0c4273a',
        'secret' => '089bb1765c462abcf4aaba72cb57022f',
    ],

];
