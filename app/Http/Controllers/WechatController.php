<?php

namespace App\Http\Controllers;

use EasyWeChat\Factory;
use EasyWeChat\Kernel\Messages\Image;
use EasyWeChat\Kernel\Messages\News;
use EasyWeChat\Kernel\Messages\NewsItem;
use EasyWeChat\Work\Application;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class WechatController extends Controller
{
    private $app = null;

    public function __construct()
    {
        $options = [
            'app_id' => 'wxd9058ab15676717a',         // AppID
            'secret' => '8f1c8cac88d4c82f866d1f5d8396b5db',    // AppSecret
            'token' => 'yuanshiceping',
            'log' => [
                'level' => 'debug',
                'file' => storage_path('logs/wechat.log'),
            ],
            // ...
        ];

        $this->app = Factory::officialAccount($options);
    }

    public function qrcode()
    {
        $app = $this->app;
        $result = $app->qrcode->forever(222);// 或者 $app->qrcode->forever("foo");
        $url = $app->qrcode->url($result['ticket']);
        $content = file_get_contents($url);
        file_put_contents(__DIR__ . '/code.jpg', $content);
        dd($app->material->uploadImage(__DIR__ . '/code.jpg')['media_id']);
//        dd($result,$app->qrcode->url('gQF98TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAySk5pcEJZQTQ5Ml8xMDAwMDAwN3YAAgSfdPZaAwQAAAAA'));
// Array
// (
//     [ticket] => gQFD8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyTmFjVTRWU3ViUE8xR1N4ajFwMWsAAgS2uItZAwQA6QcA
//     [url] => http://weixin.qq.com/q/02NacU4VSubPO1GSxj1p1k
// )
        $result = \Curl::to('https://api.weixin.qq.com/cgi-bin/qrcode/create?access_token=' . $this->app->access_token->getToken())
            ->withData(json_encode([
                'expire_seconds' => 3600 * 100 * 10,
                "action_name" => "QR_STR_SCENE",
                "action_info" => ["scene" => ["scene_str" => 'test']]
            ]))
            ->post();
        $file = \Curl::to('https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=' . urlencode($result->ticket))->get();
        return response($file, 200)->header('Content-Type', 'image/jpg');
    }

    public function index()
    {
        $app = $this->app;

        $app->server->push(function ($message) use ($app) {
            switch ($message['MsgType']) {
                case 'event':
                    switch ($message['Event']) {
                        case "subscribe":
                            $contentStr = "欢迎关注,邀请好友扫描二维码关注，累计30个活得测评卡";
                            // 是通过扫描邀请码进来的 todo::后期改成异步消息推送
                            if (isset($message['EventKey'])) {
                                // 给邀请人积分加一，并且推送消息给邀请人 todo 后期改成异步队列
//                                $app->template_message->send([
//                                    'touser' => $message['EventKey'],
//                                    'template_id' => 'XojyihpxYxoENEREDJH9X0N_uKOaL4x8SoJFq1-37fQ',
//                                    'data' => [
//                                        'name' => 'VALUE',
//                                        'num' => 'VALUE2',
//                                    ],
//                                ]);
                            }
                            // 根据用户open_id生成二维码并且返回
                            $result = $app->qrcode->forever(33333);
                            $url = $app->qrcode->url($result['ticket']);

                            $content = file_get_contents($url);
                            $path = __DIR__ . '/' . $result['ticket'] . '.jpg';
                            file_put_contents($path, $content);
                            return new Image($app->material->uploadImage($path)['media_id']);
                            break;
                        case "SCAN":
                            $contentStr = "扫描 " . $message['EventKey'];
                            //要实现统计分析，则需要扫描事件写入数据库，这里可以记录 EventKey及用户OpenID，扫描时间
                            break;
                        default:
                            $contentStr = "";
                            break;
                    }
                    return $contentStr;
                case 'text':
                    return '你好';
                    break;
                default:
                    return '该功能正在玩命开发中。。。';
            }
        });

        $response = $app->server->serve();

// 将响应输出
        $response->send(); // Laravel 里请使用：return $response;
    }
}
