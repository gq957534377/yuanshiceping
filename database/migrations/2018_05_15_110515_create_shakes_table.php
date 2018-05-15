<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateShakesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('shakes', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name', 20)->default('');
			$table->boolean('status')->default(1);
			$table->string('remark')->default('');
			$table->integer('created_at')->unsigned()->default(0);
			$table->integer('updated_at')->unsigned()->nullable()->default(0);
			$table->smallInteger('sort')->default(0);
			$table->string('entry', 245)->default('')->comment('词条');
			$table->integer('interest_id')->unsigned()->default(0)->index('interest_id');
			$table->string('interest_name', 45)->default('');
			$table->string('potential_ids', 20)->default('')->index('potential_ids');
			$table->string('potential_names', 45)->default('');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('shakes');
	}

}
