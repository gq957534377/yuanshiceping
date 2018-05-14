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
        ];

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
        $this->app->template_message->send([
            'touser' => $event->user,
            'template_id' => $event->template_id,
            'data' => [
                'name' => $event->data['name'],
                'num' => $event->data['num'],
            ],
        ]);
    }
}
