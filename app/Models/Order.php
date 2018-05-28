<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //
    public function goods()
    {
        return $this->hasOne(Good::class,'id', 'goods_id');
    }

    public function user()
    {
        return $this->hasOne(User::class,'id', 'user_id');
    }
}
