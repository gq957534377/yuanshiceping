<?php

/**
 * Created by Reliese Model.
 * Date: Wed, 02 May 2018 14:40:18 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberQualityGrade
 * 
 * @property int $member_id
 * @property int $quality_id
 * @property float $grade
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
		'grade' => 'float'
	];

	protected $fillable = [
		'grade'
	];
}
