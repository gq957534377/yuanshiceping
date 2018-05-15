<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSubQuestionsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('sub_questions', function(Blueprint $table)
		{
			$table->increments('id');
			$table->boolean('status')->default(1);
			$table->string('remark')->default('');
			$table->string('title', 200)->default('');
			$table->integer('question_id')->unsigned()->default(0)->index('question_id');
			$table->boolean('sort')->default(0);
			$table->integer('category_id')->unsigned()->default(0)->index('category_id');
			$table->string('type_name', 45)->default('');
			$table->boolean('type_id')->default(0);
			$table->integer('subject_id');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('sub_questions');
	}

}
