<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMemberInterestGradesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('member_interest_grades', function(Blueprint $table)
		{
			$table->integer('member_id')->unsigned()->index('member_id');
			$table->integer('interest_id')->unsigned()->index('interest_id');
			$table->decimal('grade', 3, 1)->default(0.0)->comment('得分');
			$table->primary(['member_id','interest_id']);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('member_interest_grades');
	}

}
