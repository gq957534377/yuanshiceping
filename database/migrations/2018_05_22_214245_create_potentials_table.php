<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreatePotentialsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('potentials', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name', 20)->default('');
			$table->boolean('status')->default(1);
			$table->string('remark')->default('');
			$table->integer('created_at')->unsigned()->default(0);
			$table->integer('updated_at')->unsigned()->default(0);
			$table->smallInteger('sort')->default(0);
			$table->string('description', 500)->default('')->comment('潜能解析');
			$table->string('shortcoming', 500)->default('')->comment('短板解析');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('potentials');
	}

}
