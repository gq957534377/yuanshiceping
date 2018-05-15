<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMemberShakeGradesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('member_shake_grades', function(Blueprint $table)
		{
			$table->integer('member_id')->unsigned()->index('member_id');
			$table->integer('shake_id')->unsigned()->index('shake_id');
			$table->decimal('grade', 4, 1)->unsigned()->default(0.0);
			$table->boolean('weight')->default(0);
			$table->primary(['member_id','shake_id']);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('member_shake_grades');
	}

}
