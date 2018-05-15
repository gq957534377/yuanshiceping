<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAnswersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('answers', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('member_id')->unsigned()->index('member_id');
			$table->integer('subject_id')->unsigned()->index('subject_id');
			$table->integer('category_id')->unsigned()->index('category_id');
			$table->integer('question_id')->unsigned()->default(0)->index('question_id');
			$table->smallInteger('sort')->unsigned()->default(0);
			$table->string('selected', 45);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('answers');
	}

}
