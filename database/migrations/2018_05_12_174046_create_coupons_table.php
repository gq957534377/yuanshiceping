<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCouponsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coupons', function (Blueprint $table) {
            $table->char('id',32)->primary()->comment('优惠券码');
            $table->integer('user_id')->nullable()->comment('生成人');
            $table->char('goods_id',32)->nullable()->comment('商品id');
            $table->integer('min')->nullable()->comment('优惠最小额度');
            $table->integer('max')->nullable()->comment('优惠最大额度');
            $table->integer('expire_start')->nullable()->comment('优惠券有效期-开始时间');
            $table->integer('expire_end')->nullable()->comment('优惠券有效期-结束时间');
            $table->string('remark')->nullable()->comment('优惠券说明备注');
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
        Schema::dropIfExists('coupons');
    }
}
