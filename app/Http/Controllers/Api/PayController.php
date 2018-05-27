<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;
use Ramsey\Uuid\Uuid;
use function EasyWeChat\Kernel\Support\generate_sign;

class PayController extends Controller
{
    /**
     * 测评支付微信统一下单
     *
     * @param Request $request
     * @return array
     */
    public function createWechatOrder(Request $request)
    {
        $data = $request->all();
        $payment = \EasyWeChat::payment(); // 微信支付

        $result = $payment->order->unify([
            'body'         => '高中测评',
            'out_trade_no' => Uuid::uuid1()->getHex(),
            'trade_type'   => 'JSAPI',  // 必须为JSAPI
            'openid'       => $data['openId'], // 这里的openid为付款人的openid
            'total_fee'    => 1, // 总价
        ]);

        // 如果成功生成统一下单的订单，那么进行二次签名
        if ($result['return_code'] === 'SUCCESS') {
            // 二次签名的参数必须与下面相同
            $params = [
                'appId'     => config('wechat.payment.default.app_id'),
                'timeStamp' => time(),
                'nonceStr'  => $result['nonce_str'],
                'package'   => 'prepay_id=' . $result['prepay_id'],
                'signType'  => 'MD5',
            ];

            // config('wechat.payment.default.key')为商户的key
            $params['paySign'] = generate_sign($params, config('wechat.payment.default.key'));

            return $params;
        } else {
            return $result;
        }
    }

    public function createOrderNotify(Request $request)
    {
        $data = $request -> all();
        \Log::debug($data);
    }

    public function createOrder(Request $request)
    {
        $data = $request -> all();
    }

}
