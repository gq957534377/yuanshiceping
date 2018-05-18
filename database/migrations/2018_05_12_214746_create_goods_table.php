<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGoodsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('goods', function (Blueprint $table) {
            $table->bigIncrements('id')->nullable()->primary('id')->comment('商品ID');
            $table->string('goods_name',32)->nullable()->comment('商品名称');
            $table->string('goods_image')->nullable()->comment('商品图片');
            $table->enum('price_level',['1','2','3'])->nullable()->comment('活动选择：1正式价格，2免费，3活动价格');
            $table->string('describe')->nullable()->comment('商品描述');
            $table->integer('class_id')->nullable()->comment('分类ID');
            $table->unsignedDecimal('price',8,2)->nullable()->comment('价格');
            $table->unsignedDecimal('activity_price',8,2)->nullable()->comment('活动价格');
            $table->unsignedInteger('people_num')->nullable()->comment('人数');
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
        Schema::dropIfExists('goods');
    }
}
