<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMemberPersonalityGradesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('member_personality_grades', function(Blueprint $table)
		{
			$table->integer('member_id')->unsigned()->index('member_id');
			$table->integer('personality_id')->unsigned()->index('personality_id');
			$table->decimal('grade', 3, 1)->default(0.0);
			$table->boolean('weight')->default(0);
			$table->primary(['member_id','personality_id']);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('member_personality_grades');
	}

}
