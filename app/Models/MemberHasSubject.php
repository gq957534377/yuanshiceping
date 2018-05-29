<?php

/**
 * Created by Reliese Model.
 * Date: Wed, 16 May 2018 19:58:47 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberHasSubject
 * 
 * @property int $id
 * @property int $current_key
 * @property int $member_id
 * @property int $subject_id
 * @property string $order_number
 * @property int $subject_status
 * @property int $category_id
 * @property int $question_id
 *
 * @package App\Models
 */
class MemberHasSubject extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'current_key' => 'int',
		'member_id' => 'int',
		'subject_id' => 'int',
		'subject_status' => 'int',
		'category_id' => 'int',
		'question_id' => 'int'
	];

	protected $fillable = [
		'current_key',
		'member_id',
		'subject_id',
		'order_number',
		'subject_status',
		'category_id',
		'question_id'
	];
}
