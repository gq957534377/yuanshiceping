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
			$table->integer('member_id')->unsigned()->index('member_id');
			$table->integer('subject_id')->unsigned()->index('subject_id');
			$table->string('order_number', 245)->default('')->comment('订单号');
			$table->boolean('subject_status')->comment('项目状态：0 未开始，1 进行中，2 已经完成');
			$table->integer('current_category_id')->unsigned()->default(0)->index('current_category_id')->comment('当前做题进度在哪个分类');
			$table->integer('question_id')->unsigned()->index('question_id');
			$table->primary(['member_id','subject_id']);
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
