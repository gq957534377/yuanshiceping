<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateQualityHasAbilityTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('quality_has_ability', function(Blueprint $table)
		{
			$table->integer('quality_id')->unsigned()->index('quality_id');
			$table->integer('ability_id')->unsigned()->index('ability_id');
			$table->boolean('type_id');
			$table->primary(['quality_id','ability_id']);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('quality_has_ability');
	}

}
