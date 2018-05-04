<?php

/**
 * Created by Reliese Model.
 * Date: Fri, 04 May 2018 13:45:05 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberShakeGrade
 * 
 * @property int $member_id
 * @property int $shake_id
 * @property float $grade
 *
 * @package App\Models
 */
class MemberShakeGrade extends Eloquent
{
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'member_id' => 'int',
		'shake_id' => 'int',
		'grade' => 'float'
	];

	protected $fillable = [
		'grade'
	];
}
