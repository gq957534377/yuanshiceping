<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCouponsRelUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('coupons_rel_users', function (Blueprint $table) {
            $table->increments('id');
            $table->char('coupon_id', 32)->comment('优惠券码');
            $table->integer('user_id')->nullable()->comment('领取人');
            $table->integer('price')->nullable()->comment('优惠金额');
            $table->boolean('status')->default(true)->comment('状态');
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
        Schema::dropIfExists('coupons_rel_users');
    }
}
