<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 24 Apr 2018 09:52:26 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Interest
 * 
 * @property int $id
 * @property string $name
 * @property int $status
 * @property string $initial
 * @property string $brief
 * @property string $detail
 * @property int $sort
 *
 * @package App\Models
 */
class Interest extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'status' => 'int',
		'sort' => 'int'
	];

	protected $fillable = [
		'name',
		'status',
		'initial',
		'brief',
		'detail',
		'sort'
	];
}
