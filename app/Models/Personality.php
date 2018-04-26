<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 26 Apr 2018 14:11:24 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Personality
 * 
 * @property int $id
 * @property string $name
 * @property int $status
 * @property string $remark
 * @property int $sort
 *
 * @package App\Models
 */
class Personality extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'status' => 'int',
		'sort' => 'int'
	];

	protected $fillable = [
		'name',
		'status',
		'remark',
		'sort'
	];
}
