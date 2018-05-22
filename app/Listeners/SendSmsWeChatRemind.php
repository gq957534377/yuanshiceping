<?php

namespace App\Listeners;

use App\Events\MessageRemind;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use EasyWeChat\Factory;
use Illuminate\Support\Facades\Log;

class SendSmsWeChatRemind
{
    private $app = null;

    public function __construct()
    {
        $options = config('wechat.official_account.default');

        $this->app = Factory::officialAccount($options);
    }

    /**
     * Handle the event.
     *
     * @param  MessageRemind  $event
     * @return void
     */
    public function handle(MessageRemind $event)
    {
        Log::info('异步发送微信给'.$event->data['name']);
        $res = $this->app->template_message->send([
            'touser' => $event->user,
            'template_id' => $event->template_id,
            'data' => [
                'name' => $event->data['name'],
                'num' => $event->data['num'],
            ],
        ]);
        // todo 如果够了指标，发送通知
        if ($event->data['num'] > 1) {
            Log::info(23456);
            $res = $this->app->template_message->send([
                'touser' => $event->user,
                'template_id' => 'NcATy1qABKC-xe7R-FqT2BwqZxDNEjkxSPO2jSWNtIA',
                'data' => [
                    'name' => $event->data['name'],
                    'num' => 3,
                ],
            ]);
        }
        Log::warning($event->user);
        Log::warning($res);
    }
}
