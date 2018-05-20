<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Createtablememberhassubjects extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('member_has_subjects', function (Blueprint $table) {
            $table->unsignedInteger('member_id');
            $table->unsignedInteger('subject_id');
            $table->tinyInteger('subject_status');
            $table->unsignedInteger('current_category_id');
            $table->unsignedInteger('question_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('member_has_subjects');
    }
}
