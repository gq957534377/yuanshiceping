<?php

namespace App\Http\Controllers;

use EasyWeChat\Work\Application;
use Illuminate\Http\Request;

class WechatController extends Controller
{
    private $app=null;

    public function __construct()
    {
        $this->app = new Application(config('wechat'));
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
        dd($this->app->server->serve());
        return $this->app->server->serve();
        //消息自动回复
        $this->app->server->setMessageHandler(function ($message){
            switch ($message->MsgType) {
                case 'event':
                    switch ($message->Event) {
                        case "subscribe":
                            $contentStr = "欢迎关注方倍工作室 ";
                            if (isset($message->EventKey)){
                                $contentStr = "关注二维码场景 ".$message->EventKey;
                            }
                            break;
                        case "SCAN":
                            $contentStr = "扫描 ".$message->EventKey;
                            //要实现统计分析，则需要扫描事件写入数据库，这里可以记录 EventKey及用户OpenID，扫描时间
                            break;
                        default:
                            $contentStr = "";
                            break;
                    }
                    return $contentStr;
                default:
                    return '该功能正在玩命开发中。。。';
            };
        });

        return $this->app->server->serve();
    }
}