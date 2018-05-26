<?php

namespace App\Http\Controllers;

use App\Events\CompleteInviter;
use App\Events\MessageRemind;
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
        $options = config('wechat.official_account.default');

        $this->app = Factory::officialAccount($options);
    }

    public function qrcode()
    {
        dd(config('wechat.official_account.default'));
        $a = "dssdsds";
        $b = 0;
        if ($b == $a) {
            dd(1);
        } else {
            dd(2);
        }
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
            switch ($message['MsgType']??null) {
                case 'event':
                    switch ($message['Event']) {
                        case "subscribe":
                            // todo 有了unionid之后修改下
                            $query = User::query();
                            $query = $query->where('weChat_id', $message['FromUserName']);
                            $weChat = $app->user->get($message['FromUserName']);
                            $query->when($weChat['unionid']??null, function ($q, $value) {
                                return $q->orWhere(['union_id' => $value]);
                            });
                            $user = $query->first();
                            if (empty($weChat['nickname'])) {
                                $weChat = [
                                    'nickname' => '',
                                    'openid' => $message['FromUserName'],
                                    'unionid' => null,
                                    'headimgurl' => ''
                                ];
                            }
                            if (empty($user)) {
                                $newUser = [
                                    'name' => $weChat['nickname'],
                                    'weChat_id' => $weChat['openid'],
                                    'union_id' => $weChat['unionid']??null,
                                    'head_url' => $weChat['headimgurl'],
                                ];
                                // 是通过扫描邀请码进来的 todo::后期改成异步消息推送
                                if (isset($message['EventKey'])) {
                                    $eventKey = str_replace('qrscene_', '', $message['EventKey']);
                                    // 给邀请人积分加一，并且推送消息给邀请人 todo 后期改成异步队列
                                    $newUser['inviter_id'] = User::where('weChat_id', $eventKey)->first()->id??null;
                                    $count = User::where('inviter_id', $newUser['inviter_id'])->count();
                                    event(new MessageRemind($eventKey, 'Fwb3aAlKkwg3tAtyyEq3KoLkKgWlLzBjC9TqOaKZelQ', [
                                        'name' => $app->user->get($message['FromUserName'])['nickname'],
                                        'num' => ($count + 1)
                                    ]));
//                                    // todo 如果够了指标，发送通知
//                                    if ($count > 1) {
//                                        event(new CompleteInviter($eventKey, 'NcATy1qABKC-xe7R-FqT2BwqZxDNEjkxSPO2jSWNtIA', [
//                                            'name' => $app->user->get($message['FromUserName'])['nickname'],
//                                            'num' => 3
//                                        ]));
//                                    }
                                }

                                // 根据用户open_id生成二维码并且返回
                                $result = $app->qrcode->forever($weChat['openid']);
                                $url = $app->qrcode->url($result['ticket']);
                                $newUser['ticket'] = $result['ticket'];
                                User::create($newUser);


                                $bottomImg = $this->makeImg($newUser['head_url'], $newUser['name'], $url);

                                $upload = $this->uploadImage($bottomImg, $result['ticket']);
                                return new Image($upload['media_id']);
                            } else {
                                // 根据用户open_id生成二维码并且返回
                                if (empty($user->ticket)) {
                                    $result = $app->qrcode->forever($message['FromUserName']);
                                    $user->ticket = $result['ticket'];
                                }
                                $user->weChat_id = $message['FromUserName'];
                                $user->save();
                                $url = $app->qrcode->url($user->ticket);
                                return $url;

                                // 上传图片素材
                                $upload = $this->uploadImage($url, $user->ticket);
                                return new Image($upload['media_id']);
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

    /**
     * 说明: 设置菜单
     *
     * @author 郭庆
     */
    public function menu()
    {
        $app = $this->app;
        $buttons = [
            [
                "name" => "福利领取",
                "sub_button" => [
                    [
                        "type" => "view",
                        "name" => "免费测评",
                        "url" => "http://www.soso.com/"
                    ],
                    [
                        "type" => "view",
                        "name" => "微课",
                        "url" => "http://v.qq.com/"
                    ],
                ]
            ],
            [
                "type" => "click",
                "name" => "测评大厅",
                "key" => "V1001_TODAY_MUSIC"
            ],
            [
                "name" => "关于我们",
                "sub_button" => [
                    [
                        "type" => "view",
                        "name" => "企业简介",
                        "url" => "http://www.soso.com/"
                    ],
                    [
                        "type" => "view",
                        "name" => "服务案例",
                        "url" => "http://v.qq.com/"
                    ],
                    [
                        "type" => "view",
                        "name" => "联系我们",
                        "url" => "http://v.qq.com/"
                    ],
                ]
            ],
        ];
        $app->menu->create($buttons);
    }

    /**
     * 说明: 上传图片到素材库
     *
     * @param $url
     * @param $file
     * @return array|\EasyWeChat\Kernel\Support\Collection|object|\Psr\Http\Message\ResponseInterface|string
     * @author 郭庆
     */
    private function uploadImage($url, $file)
    {
        $content = file_get_contents($url);
        $path = public_path('tickets/' . $file . '.jpg');
        file_put_contents($path, $content);
        return $this->app->material->uploadImage($path);
    }

    /**
     * 创建邀请图
     *
     * @param $headImg
     * @param $name
     * @param $qrcode
     * @return string
     */
    public function makeImg($headImg, $name, $qrcode)
    {
        $headImg = 'http://thirdwx.qlogo.cn/mmopen/Q3auHgzwzM5naNcVupPIMY7VqoXVtA70LD5Tn0boxxA4Hj9UjhFQLaB4P09CtbcbDYtuxxhuUJsFRR6Ah7JZmvWlRiboHUSoYicuLdiaZUeohI/132';
        $name = 'AAAA-GQ';
        $qrcode = 'https://mp.weixin.qq.com/cgi-bin/showqrcode?ticket=gQEm8TwAAAAAAAAAAS5odHRwOi8vd2VpeGluLnFxLmNvbS9xLzAyUzZvRVIwcGhjcmoxMDAwMDAwN2oAAgQL0gNbAwQAAAAA';
        $tx = $this->getImage($headImg, public_path('uploads/wechatHeadImg/'), time() . mt_rand(1, 9999) . '.jpeg', 1);
        $tx = imagecreatefromjpeg($this->headImg($tx['save_path']));

        // 底板图片
        $bottom = imagecreatefromjpeg(public_path('uploads/wechatInvitationImage/bottomJscp.jpeg'));

        $font = public_path('font') . '/PingFangRegular.ttf';
        //微信头像
        imagecopymerge($bottom, $tx, 30, 30, 0, 0, 120, 120, 100);
        //微信名
        imagefttext($bottom, 14, 0, 170, 30, imagecolorallocate($bottom, 99, 75, 0), $font, $name);
        // 二维码
        $qr = $this->getImage($qrcode, public_path('uploads/qrcode/'), time() . mt_rand(1, 9999) . '.jpeg', 1);
        $qrcode = imagecreatefromjpeg($qr['save_path']);

        $wh = getimagesize($qr['save_path']);
        $w = $wh[0];
        $h = $wh[1];
        $w = min($w, $h);
        $h = $w;
        $new = imagecreatetruecolor(160, 160);
        //copy部分图像并调整
        imagecopyresized($new, $qrcode, 0, 0, 0, 0, 160, 160, $w, $h);

        // 合并图像
        imagecopymerge($bottom, $new, 500, 1160, 0, 0, 160, 160, 100);


        $fileName = public_path('uploads/wechatInvitationImage/') . time() . mt_rand(1, 9999) . '.jpeg';
        header('Content-type:image/jpeg');
        imagejpeg($bottom, $fileName, 100);
        imagedestroy($bottom);
        return $fileName;
    }

    /**
     * 功能：php完美实现下载远程图片保存到本地
     * 参数：文件url,保存文件目录,保存文件名称，使用的下载方式
     * 当保存文件名称为空时则使用远程文件原来的名称
     */
    public function getImage($url, $save_dir = '', $filename = '', $type = 0)
    {
        if (trim($url) == '') {
            return array('file_name' => '', 'save_path' => '', 'error' => 1);
        }
        if (trim($save_dir) == '') {
            $save_dir = './';
        }
        if (trim($filename) == '') {//保存文件名
            $ext = strrchr($url, '.');
            if ($ext != '.gif' && $ext != '.jpg') {
                return array('file_name' => '', 'save_path' => '', 'error' => 3);
            }
            $filename = time() . $ext;
        }
        if (0 !== strrpos($save_dir, '/')) {
            $save_dir .= '/';
        }
        //创建保存目录
        if (!file_exists($save_dir) && !mkdir($save_dir, 0777, true)) {
            return array('file_name' => '', 'save_path' => '', 'error' => 5);
        }
        //获取远程文件所采用的方法
        if ($type) {
            $ch = curl_init();
            $timeout = 5;
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
            $img = curl_exec($ch);
            curl_close($ch);
        } else {
            ob_start();
            readfile($url);
            $img = ob_get_contents();
            ob_end_clean();
        }
        //$size=strlen($img);
        //文件大小
        $fp2 = @fopen($save_dir . $filename, 'a');
        fwrite($fp2, $img);
        fclose($fp2);
        unset($img, $url);
        return array('file_name' => $filename, 'save_path' => $save_dir . $filename, 'error' => 0);
    }

    /**
     *
     * 处理成圆图片,如果图片不是正方形就取最小边的圆半径,从左边开始剪切成圆形
     * @param  string $imgpath [description]
     * @return [type]          [description]
     */
    public function headImg($url)
    {
        $ext = pathinfo($url);

        $src_img = null;
        switch ($ext['extension']) {
            case 'jepg' || 'jpg':
                $src_img = imagecreatefromjpeg($url);
                break;
            case 'png':
                $src_img = imagecreatefrompng($url);
                break;
        }
        $wh = getimagesize($url);
        $w = $wh[0];
        $h = $wh[1];
        $w = min($w, $h);
        $h = $w;
        $img = imagecreatetruecolor($w, $h);

        //这一句一定要有
        imagesavealpha($img, true);
        //拾取一个完全透明的颜色,最后一个参数127为全透明
        $bg = imagecolorallocatealpha($img, 255, 255, 255, 116);
        imagefill($img, 0, 0, $bg);
        $r = $w / 2; //圆半径
        for ($x = 0; $x < $w; $x++) {
            for ($y = 0; $y < $h; $y++) {
                $rgbColor = imagecolorat($src_img, $x, $y);
                if (((($x - $r) * ($x - $r) + ($y - $r) * ($y - $r)) < ($r * $r))) {
                    imagesetpixel($img, $x, $y, $rgbColor);
                }
            }
        }
        $n_w = 120;
        $n_h = 120;
        $new = imagecreatetruecolor($n_w, $n_h);
        //copy部分图像并调整
        imagecopyresized($new, $img, 0, 0, 0, 0, $n_w, $n_h, $w, $h);

        $fileName = public_path('uploads/wechatHeadImg/') . md5($url) . '.jpeg';
        header("content-type:image/jpeg");
        imagejpeg($new, $fileName);
        imagedestroy($new);
        return $fileName;
    }

}
