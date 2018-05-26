<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMemberPotentialGradesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('member_potential_grades', function(Blueprint $table)
		{
			$table->integer('member_id')->unsigned()->index('member_id');
			$table->integer('potential_id')->unsigned()->index('potential_id');
			$table->decimal('grade', 4, 1)->unsigned()->default(0.0);
			$table->boolean('weight')->default(0);
			$table->boolean('personality_type_weight')->default(0)->comment('对应相应风格加权重');
			$table->primary(['member_id','potential_id']);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('member_potential_grades');
	}

}
