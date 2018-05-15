<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 15 May 2018 10:21:16 +0800.
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
		'weight' => 'int'
	];

	protected $fillable = [
		'grade',
		'weight'
	];
}
