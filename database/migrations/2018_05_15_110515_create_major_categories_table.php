<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMajorCategoriesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('major_categories', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name', 20)->default('');
			$table->boolean('status')->default(1);
			$table->string('remark')->default('');
			$table->integer('created_at')->unsigned()->default(0);
			$table->integer('updated_at')->unsigned()->default(0);
			$table->smallInteger('sort')->default(0);
			$table->string('code', 45)->default('')->comment('教育部统一专业编号');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('major_categories');
	}

}
