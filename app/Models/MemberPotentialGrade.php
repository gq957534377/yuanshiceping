<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 22 May 2018 21:54:10 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberPotentialGrade
 * 
 * @property int $member_id
 * @property int $potential_id
 * @property float $grade
 * @property int $weight
 * @property int $personality_type_weight
 *
 * @package App\Models
 */
class MemberPotentialGrade extends Eloquent
{
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'member_id' => 'int',
		'potential_id' => 'int',
		'grade' => 'float',
		'weight' => 'int',
		'personality_type_weight' => 'int'
	];

	protected $fillable = [
		'grade',
		'weight',
		'personality_type_weight'
	];
}
