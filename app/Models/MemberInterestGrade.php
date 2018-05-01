<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 01 May 2018 18:31:54 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberInterestGrade
 * 
 * @property int $member_id
 * @property int $interest_id
 * @property float $grade
 *
 * @package App\Models
 */
class MemberInterestGrade extends Eloquent
{
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'member_id' => 'int',
		'interest_id' => 'int',
		'grade' => 'float'
	];

	protected $fillable = [
		'grade'
	];
}
