<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMajorsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('majors', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name', 20)->default('')->comment('专业名称');
			$table->boolean('status')->default(1);
			$table->string('remark')->default('');
			$table->integer('created_at')->unsigned()->default(0);
			$table->integer('updated_at')->unsigned()->default(0);
			$table->smallInteger('sort')->default(0);
			$table->integer('major_category_id')->unsigned()->default(0)->index('major_category_id');
			$table->integer('interest_id')->unsigned()->default(0)->index('interest_id');
			$table->string('interest_name', 45)->default('');
			$table->integer('shake_id')->unsigned()->default(0)->index('shake_id');
			$table->string('shake_name', 45)->default('')->comment('型格名称');
			$table->string('potential_ids', 45)->default('')->index('potential_ids');
			$table->string('potential_names', 45)->default('')->comment('教育部统一专业编号');
			$table->string('code', 45)->default('');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('majors');
	}

}
