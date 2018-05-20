<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMemberHasSubjectsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('member_has_subjects', function(Blueprint $table)
		{
			$table->increments('id');
			$table->boolean('current_key')->default(0)->comment('当前题目在数组中的下标');
			$table->integer('member_id')->unsigned()->default(0)->index('member_id');
			$table->integer('subject_id')->unsigned()->default(0)->index('subject_id');
			$table->string('order_number', 245)->default('')->comment('订单号');
			$table->boolean('subject_status')->default(0)->comment('项目状态：0 未开始，1 进行中，2 已经完成');
			$table->integer('category_id')->unsigned()->default(0)->index('category_id')->comment('当前做题进度在哪个分类');
			$table->integer('question_id')->unsigned()->default(0)->index('question_id');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('member_has_subjects');
	}

}
