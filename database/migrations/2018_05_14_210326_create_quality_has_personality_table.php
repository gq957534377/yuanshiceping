<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateQualityHasPersonalityTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('quality_has_personality', function(Blueprint $table)
		{
			$table->integer('quality_id')->unsigned()->index('quality_id');
			$table->integer('personality_id')->unsigned()->index('personality_id');
			$table->decimal('ratio', 3)->unsigned()->comment('系数');
			$table->string('type_name', 45)->default('');
			$table->primary(['quality_id','personality_id','ratio']);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('quality_has_personality');
	}

}
