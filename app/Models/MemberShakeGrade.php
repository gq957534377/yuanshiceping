<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 15 May 2018 10:21:43 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class MemberShakeGrade
 * 
 * @property int $member_id
 * @property int $shake_id
 * @property float $grade
 * @property int $weight
 *
 * @package App\Models
 */
class MemberShakeGrade extends Eloquent
{
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'member_id' => 'int',
		'shake_id' => 'int',
		'grade' => 'float',
		'weight' => 'int'
	];

	protected $fillable = [
		'grade',
		'weight',
        'order_number',
	];

    static public function gradeList($member_id, $order_number)
    {
        $list = [];
        $all = Shake::getAllIndexById();
        $where = [
            'member_id' => $member_id,
            'order_number' => $order_number,
        ];
        $models = static::where($where)->orderByDesc('grade')->orderByDesc('weight')->get();
        foreach ($models as $key => $model) {

            $temp = $model->toArray();
            $temp['name'] = $all[$temp['shake_id']]['name'];
            $temp['rank'] = $key + 1;
            $list[] = $temp;
        }

        return $list;
    }
}
