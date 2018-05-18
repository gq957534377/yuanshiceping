<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    // 不允许编辑字段
    protected $guarded = [];

    public function user()
    {
        return $this->hasOne(User::class,'id','user_id');
    }

    public static function getItems(self $item)
    {
        return [
            'id' => $item->id,
            'goods_id' => $item->goods_id,
            'parent_id' => $item->parent_id,
            'user_id' => $item->user_id,
            'title' => $item->title,
            'content' => $item->content,
            'user_head'=>$item->user->head_url
        ];
    }
}
