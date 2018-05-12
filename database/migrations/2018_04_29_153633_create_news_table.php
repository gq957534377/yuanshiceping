<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title',20)->nullable(false)->comment('标题');
            $table->string('keyword',50)->nullable()->default('')->comment('关键字');
            $table->longText('content')->nullable()->comment('内容');
            $table->integer('like_num')->nullable()->default(0)->comment('点赞数');
            $table->integer('read_num')->nullable()->default(0)->comment('阅读量');
            $table->integer('sort')->nullable()->default(0)->comment('排序');
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
        Schema::dropIfExists('news');
    }
}
