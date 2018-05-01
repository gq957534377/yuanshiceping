<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 01 May 2018 19:49:25 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberPersonalityGrade
 * 
 * @property int $member_id
 * @property int $personality_id
 * @property float $grade
 *
 * @package App\Models
 */
class MemberPersonalityGrade extends Eloquent
{
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'member_id' => 'int',
		'personality_id' => 'int',
		'grade' => 'float'
	];

	protected $fillable = [
		'grade'
	];
}
