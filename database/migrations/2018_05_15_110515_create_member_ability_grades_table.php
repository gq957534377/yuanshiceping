<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMemberAbilityGradesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('member_ability_grades', function(Blueprint $table)
		{
			$table->integer('member_id')->unsigned()->index('fk_member_has_abilities_member1_idx');
			$table->integer('ability_id')->unsigned()->index('fk_member_has_abilities_abilities1_idx');
			$table->decimal('grade', 3, 1)->default(0.0);
			$table->boolean('weight')->default(0);
			$table->primary(['member_id','ability_id']);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('member_ability_grades');
	}

}
