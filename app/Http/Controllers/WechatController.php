<?php

namespace App\Http\Controllers;

use App\User;
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
            // guoqing
//            'app_id' => 'wxd9058ab15676717a',         // AppID
//            'secret' => '8f1c8cac88d4c82f866d1f5d8396b5db',    // AppSecret
           // jingyue
            'app_id' => 'wxa069671594673f20',         // AppID
            'secret' => '42db52a7d53f7b0278fc5d6710dc4628',    // AppSecret
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
                            // todo 有了unionid之后修改下
                            $user = User::where('weChart_id',$message['FromUserName'])->first();
                            $weChat = $app->user->get($message['FromUserName']);
                            if (empty($user)) {
                                $newUser = [
                                    'name' => $weChat['nickname'],
                                    'weChart_id' => $weChat['openid'],
                                    'union_id' => $weChat['unionid']??null,
                                    'head_url' => $weChat['headimgurl'],
                                ];
                                // 是通过扫描邀请码进来的 todo::后期改成异步消息推送
                                if (isset($message['EventKey'])) {
                                    // 给邀请人积分加一，并且推送消息给邀请人 todo 后期改成异步队列
                                    $newUser['inviter_id'] = User::where('weChat_id', $message['EventKey'])->first()->id??null;
                                    $count = User::where(['inviter_id', $newUser['inviter_id']])->count();
                                    $app->template_message->send([
                                        'touser' => $message['EventKey'],
                                        'template_id' => 'XojyihpxYxoENEREDJH9X0N_uKOaL4x8SoJFq1-37fQ',
                                        'data' => [
                                            'name' => $weChat['nickname'],
                                            'num' => ($count + 1),
                                        ],
                                    ]);
                                }
                                // todo 如果够了指标，发送通知

                                // 根据用户open_id生成二维码并且返回
                                $result = $app->qrcode->forever($message['FromUserName']);
                                $url = $app->qrcode->url($result['ticket']);
                                $newUser['ticket'] = $result['ticket'];
                                User::create($newUser);

                                $content = file_get_contents($url);
                                $path = __DIR__ . '/' . $result['ticket'] . '.jpg';
                                file_put_contents($path, $content);
                                $upload = $app->material->uploadImage($path);
                                Log::debug($upload);
//                            return new Image($upload['media_id']);
                                return new News([[
                                    new NewsItem([
                                        'title' => '欢迎关注,邀请好友扫描二维码关注，累计30个活得测评卡',
                                        'description' => '...',
                                        'url' => $url,
                                        'image' => $url,
                                    ]),
                                ]]);
                            } else {
                                // 根据用户open_id生成二维码并且返回
                                if (empty($user->ticket)) {
                                    $result = $app->qrcode->forever($message['FromUserName']);
                                    $user->ticket = $result['ticket'];
                                }
                                $user->weChat_id = $message['FromUserName'];
                                $user->save();
                                $url = $app->qrcode->url($user->ticket);
                                $content = file_get_contents($url);
                                $path = __DIR__ . '/' . $user->ticket . '.jpg';
                                file_put_contents($path, $content);
                                $upload = $app->material->uploadImage($path);
                                Log::debug($upload);
//                            return new Image($upload['media_id']);
                                return new News([[
                                    new NewsItem([
                                        'title' => '欢迎关注,邀请好友扫描二维码关注，累计30个活得测评卡',
                                        'description' => '...',
                                        'url' => $url,
                                        'image' => $url,
                                    ]),
                                ]]);
                            }
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
