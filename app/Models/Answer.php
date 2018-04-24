<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 24 Apr 2018 09:52:26 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Answer
 * 
 * @property int $id
 * @property string $name
 * @property int $status
 * @property string $remark
 * @property int $question_id
 * @property int $sort
 *
 * @package App\Models
 */
class Answer extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'status' => 'int',
		'question_id' => 'int',
		'sort' => 'int'
	];

	protected $fillable = [
		'name',
		'status',
		'remark',
		'question_id',
		'sort'
	];
}
