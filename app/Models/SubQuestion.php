<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 24 Apr 2018 09:52:26 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class SubQuestion
 * 
 * @property int $id
 * @property string $name
 * @property int $status
 * @property string $remark
 * @property string $title
 * @property int $question_id
 *
 * @package App\Models
 */
class SubQuestion extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'status' => 'int',
		'question_id' => 'int'
	];

	protected $fillable = [
		'name',
		'status',
		'remark',
		'title',
		'question_id'
	];
}
