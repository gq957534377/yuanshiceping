<?php

namespace App\Http\Controllers;

use EasyWeChat\Factory;
use EasyWeChat\Kernel\Messages\News;
use EasyWeChat\Work\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class WechatController extends Controller
{
    private $app=null;

    public function __construct()
    {
        $this->app = new Application(config('wechat'));
//        $this->app = Factory::officialAccount(config('wechat'));
    }

    public function qrcode()
    {
        $result = \Curl::to('https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=' . $this->app->access_token->getToken())
            ->withData(json_encode([
                'expire_seconds' => 3600*100*10,
                "action_name"=> "QR_STR_SCENE",
                "action_info"=> [ "scene"=> ["scene_str"=> 'test'] ]
            ]))
            ->post();
        $file = \Curl::to('https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=' . urlencode($result->ticket))->get();
        return response($file, 200)->header('Content-Type', 'image/jpg');
    }

    public function index()
    {

        $wechat = app('wechat');
        // 用户输入返回
        $userApi = $wechat->user;

        $options = config('wechat');

        $app = new Application($options);
        $broadcast = $app->broadcast;

        $wechat->server->setMessageHandler(function ($message) use ($userApi, $app, $broadcast) {
            switch ($message->MsgType) {
                case 'event':
                    switch ($message->Event) {
                        case 'subscribe':
                            $news = new News();
                            $news->title = '欢迎关注';
                            $news->description = '大丢哥';
                            $news->url = 'https://www.blog8090.com/#blog';
                            $news->image = "https://www.blog8090.com/content/images/2017/02/88C022E3-CAC2-4116-98F2-FEE0FA330D20.png";
                            return $news;
                            break;
                            break;
                        default:
                            # code...
                            break;
                    }
                    break;
                case 'text':
                    return '你好' . $userApi->get($message->FromUserName)->nickname;
                    break;
                case 'image':
                    $news = new News();
                    $news->title = '博主简介';
                    $news->description = '大丢哥';
                    $news->url = 'https://www.blog8090.com/#blog';
                    $news->image = "https://www.blog8090.com/content/images/2017/02/88C022E3-CAC2-4116-98F2-FEE0FA330D20.png";
                    return $news;
                    break;
                case 'voice':
                    $new1 = $news = new News([
                        'title' => '博主简介',
                        'description' => '大丢哥',
                        'url' => 'https://www.blog8090.com/#blog',
                        'image' => 'https://www.blog8090.com/content/images/2017/02/88C022E3-CAC2-4116-98F2-FEE0FA330D20.png',
                    ]);
                    $new1 = $news = new News([
                        'title' => '博主简介',
                        'description' => '大丢哥',
                        'url' => 'https://www.blog8090.com/#blog',
                        'image' => 'https://www.blog8090.com/content/images/2017/02/88C022E3-CAC2-4116-98F2-FEE0FA330D20.png',
                    ]);
                    $new2 = $news = new News([
                        'title' => '博主简介',
                        'description' => '大丢哥',
                        'url' => 'https://www.blog8090.com/#blog',
                        'image' => 'https://www.blog8090.com/content/images/2017/02/88C022E3-CAC2-4116-98F2-FEE0FA330D20.png',
                    ]);
                    $new3 = $news = new News([
                        'title' => '博主简介',
                        'description' => '大丢哥',
                        'url' => 'https://www.blog8090.com/#blog',
                        'image' => 'https://www.blog8090.com/content/images/2017/02/88C022E3-CAC2-4116-98F2-FEE0FA330D20.png',
                    ]);
                    $app->staff->message([$new1, $new2, $new3])->to($message->FromUserName)->send();

                    break;
            }
        });
        //消息自动回复
//        $this->app->server->setMessageHandler(function ($message){
//            Log::debug($message);
//            switch ($message->MsgType) {
//                case 'event':
//                    switch ($message->Event) {
//                        case "subscribe":
//                            $contentStr = "欢迎关注方倍工作室 ";
//                            if (isset($message->EventKey)){
//                                $contentStr = "关注二维码场景 ".$message->EventKey;
//                            }
//                            break;
//                        case "SCAN":
//                            $contentStr = "扫描 ".$message->EventKey;
//                            //要实现统计分析，则需要扫描事件写入数据库，这里可以记录 EventKey及用户OpenID，扫描时间
//                            break;
//                        default:
//                            $contentStr = "";
//                            break;
//                    }
//                    return $contentStr;
//                default:
//                    return '该功能正在玩命开发中。。。';
//            };
//        });

        return $this->app->server->serve();
    }
}
