<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 15 May 2018 10:21:29 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberQualityGrade
 * 
 * @property int $member_id
 * @property int $quality_id
 * @property float $grade
 * @property int $weight
 *
 * @package App\Models
 */
class MemberQualityGrade extends Eloquent
{
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'member_id' => 'int',
		'quality_id' => 'int',
		'grade' => 'float',
		'weight' => 'int'
	];

	protected $fillable = [
		'grade',
		'weight'
	];
}
