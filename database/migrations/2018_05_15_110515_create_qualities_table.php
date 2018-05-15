<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateQualitiesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('qualities', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name', 45)->default('');
			$table->boolean('status')->default(1);
			$table->smallInteger('sort')->unsigned()->default(0);
			$table->decimal('min', 3, 1)->default(0.0)->comment('最低分');
			$table->decimal('max', 3, 1)->default(0.0);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('qualities');
	}

}
