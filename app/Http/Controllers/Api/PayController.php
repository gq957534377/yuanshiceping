<?php

namespace App\Http\Controllers\Api;

use EasyWeChat\Factory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;
use Ramsey\Uuid\Uuid;
use function EasyWeChat\Kernel\Support\generate_sign;

class PayController extends Controller
{
    private $app = null;

    public function __construct()
    {
        $options = config('wechat.payment.default');

        $this->app = Factory::officialAccount($options);
    }

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
//        "return_code": "SUCCESS",
//    "return_msg": "OK",
//    "appid": "wx2421b1c4390ec4sb",
//    "mch_id": "10000100",
//    "nonce_str": "IITRi8Iabbblz1J",
//    "openid": "oUpF8uMuAJO_M2pxb1Q9zNjWeSs6o",
//    "sign": "7921E432F65EB8ED0CE9755F0E86D72F2",
//    "result_code": "SUCCESS",
//    "prepay_id": "wx201411102639507cbf6ffd8b0779950874",
//    "trade_type": "JSAPI"

        $this->app->order->queryByTransactionId("微信订单号（transaction_id）");

    }

}
