<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id')->comment('订单ID');
            $table->uuid('order_id')->comment('订单号');
            $table->string('transaction_id')->comment('微信订单号');
            $table->unsignedInteger('goods_id')->comment('商品ID');
            $table->unsignedInteger('user_id')->comment('用户ID');
            $table->enum('price_level', ['1', '2', '3'])->comment('活动选择：1正式价格，2免费，3活动价格');
            $table->unsignedDecimal('price', 8, 2)->default('0.00')->comment('价格');
            $table->unsignedDecimal('paid_price', 8, 2)->default('0.00')->comment('实付价格');
            $table->unsignedDecimal('coupon_price', 8, 2)->default('0.00')->comment('优惠卷价格');
            $table->enum('order_status', [1, 2, 3])->comment('1：已支付，2：未支付 3:已赠送');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
}
