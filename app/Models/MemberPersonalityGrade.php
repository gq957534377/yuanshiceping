<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 15 May 2018 10:21:02 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberPersonalityGrade
 * 
 * @property int $member_id
 * @property int $personality_id
 * @property float $grade
 * @property int $weight
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
		'grade' => 'float',
		'weight' => 'int'
	];

	protected $fillable = [
		'grade',
		'weight'
	];
}
