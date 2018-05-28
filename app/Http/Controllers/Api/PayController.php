<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Models\Order;
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

    //微信支付回调
    public function createOrderNotify()
    {
        $callback_string = file_get_contents('php://input');
        if (empty($callback_string))
        {
            echo "FAIL";exit;
        }
        $data = $this->xml2array($callback_string);
        if ($data==false)
        {
            echo "FAIL";exit;
        }
        \Log::debug($data);die;

        $out_trade_no = $data['out_trade_no'];
        $order_id = $data['attach'][0];
        $transaction_id = $data['transaction_id'];

        $orderInfo = Order::where(['id'=>$order_id])->first()->toArray();
        $userInfo = User::where(['id'=>$orderInfo['uid']])->first()->toArray();
        $params = [
            'order' => $out_trade_no,
            'order_num' => $transaction_id,
            'gname' => $orderInfo['goods_name'],
            'uname' => $userInfo['nickname'],
            'explain' => '',
            'status' => 1,
            'addtime' => date('Y-m-d H:i:s',time()),
        ];

        if ($orderInfo['type'] == 1 || $orderInfo['type']==2 ||$orderInfo['type'] ==3)
        {
            Order::where(['id'=>$orderInfo['id']])->update(['status'=>3,'order_num'=>$out_trade_no,'uptime'=>date('Y-m-d H:i:s',time())]);
            $res = \Log::debug($params);
        }elseif($orderInfo['type'] == 4 || $orderInfo['type']==5)
        {
            Order::where(['id'=>$orderInfo['id']])->update(['status'=>7,'order_num'=>$out_trade_no,'uptime'=>date('Y-m-d H:i:s',time())]);
            $res = \Log::debug($params);
        }
        if ($res) {
            return "<xml><return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg></xml>";
        }else{
            return "<xml><return_code><![CDATA[FAIL]]></return_code><return_msg><![CDATA[FAIL]]></return_msg></xml>";
        }

    }

    public function createOrder(Request $request)
    {
        $data = $request -> all();
    }

}
