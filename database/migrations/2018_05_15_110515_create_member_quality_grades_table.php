<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMemberQualityGradesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('member_quality_grades', function(Blueprint $table)
		{
			$table->integer('member_id')->unsigned()->index('member_id');
			$table->integer('quality_id')->unsigned()->index('quality_id');
			$table->decimal('grade', 3, 1);
			$table->boolean('weight')->default(0);
			$table->primary(['member_id','quality_id']);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('member_quality_grades');
	}

}
