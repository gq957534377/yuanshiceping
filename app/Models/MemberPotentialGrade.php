<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 03 May 2018 20:13:00 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberPotentialGrade
 * 
 * @property int $member_id
 * @property int $potential_id
 * @property float $grade
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
		'grade' => 'float'
	];

	protected $fillable = [
		'grade'
	];
}
