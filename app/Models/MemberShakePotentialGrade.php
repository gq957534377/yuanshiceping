<?php

/**
 * Created by Reliese Model.
 * Date: Fri, 04 May 2018 15:51:58 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberShakePotentialGrade
 * 
 * @property int $member_id
 * @property int $shake_id
 * @property string $potential_ids
 * @property float $grade
 *
 * @package App\Models
 */
class MemberShakePotentialGrade extends Eloquent
{
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'member_id' => 'int',
		'shake_id' => 'int',
		'grade' => 'float'
	];

	protected $fillable = [
		'potential_ids',
		'grade'
	];
}
