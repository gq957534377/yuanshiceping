<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateReportsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('reports', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('created_at')->unsigned()->default(0);
			$table->integer('subject_id')->unsigned()->index('subject_id');
			$table->integer('member_id')->unsigned()->index('member_id');
			$table->string('path', 545)->default('')->comment('测评报告静态文件地址');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('reports');
	}

}
