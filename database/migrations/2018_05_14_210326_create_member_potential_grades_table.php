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
			$table->integer('member_id')->unsigned()->index('fk_member_has_potentials_member1_idx');
			$table->integer('potential_id')->unsigned()->index('fk_member_has_potentials_potentials1_idx');
			$table->decimal('grade', 4, 1)->unsigned()->default(0.0);
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
