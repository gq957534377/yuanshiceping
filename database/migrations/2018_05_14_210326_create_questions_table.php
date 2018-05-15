<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateQuestionsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('questions', function(Blueprint $table)
		{
			$table->increments('id');
			$table->boolean('status')->default(1);
			$table->string('remark')->default('');
			$table->string('title', 200)->default('');
			$table->integer('category_id')->unsigned()->default(0)->index('category_id');
			$table->smallInteger('sort')->unsigned()->default(0);
			$table->integer('subject_id')->default(0);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('questions');
	}

}
