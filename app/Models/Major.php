<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 03 May 2018 10:08:56 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Major
 * 
 * @property int $id
 * @property string $name
 * @property int $status
 * @property string $remark
 * @property int $created_at
 * @property int $updated_at
 * @property int $sort
 * @property int $major_category_id
 * @property int $personality_id
 * @property string $personality_name
 * @property int $shake_id
 * @property string $shakes_name
 * @property string $potential_ids
 * @property string $potential_names
 *
 * @package App\Models
 */
class Major extends Eloquent
{
	protected $casts = [
		'status' => 'int',
		'created_at' => 'int',
		'updated_at' => 'int',
		'sort' => 'int',
		'major_category_id' => 'int',
		'personality_id' => 'int',
		'shake_id' => 'int'
	];

	protected $fillable = [
		'name',
		'status',
		'remark',
		'sort',
		'major_category_id',
		'personality_id',
		'personality_name',
		'shake_id',
		'shakes_name',
		'potential_ids',
		'potential_names'
	];
}
