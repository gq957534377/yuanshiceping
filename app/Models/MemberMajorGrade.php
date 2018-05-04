<?php

/**
 * Created by Reliese Model.
 * Date: Fri, 04 May 2018 16:49:18 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberMajorGrade
 * 
 * @property int $member_id
 * @property int $major_id
 * @property float $grade
 *
 * @package App\Models
 */
class MemberMajorGrade extends Eloquent
{
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'member_id' => 'int',
		'major_id' => 'int',
		'grade' => 'float'
	];

	protected $fillable = [
		'grade'
	];
}
