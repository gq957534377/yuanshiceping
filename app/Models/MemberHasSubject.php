<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 15 May 2018 11:02:09 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberHasSubject
 * 
 * @property int $member_id
 * @property int $subject_id
 * @property string $order_number
 * @property int $subject_status
 * @property int $current_category_id
 * @property int $question_id
 *
 * @package App\Models
 */
class MemberHasSubject extends Eloquent
{
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'member_id' => 'int',
		'subject_id' => 'int',
		'subject_status' => 'int',
		'current_category_id' => 'int',
		'question_id' => 'int'
	];

	protected $fillable = [
		'order_number',
		'subject_status',
		'current_category_id',
		'question_id'
	];
}
