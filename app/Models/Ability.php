<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 24 Apr 2018 09:52:26 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Ability
 * 
 * @property int $id
 * @property string $name
 * @property int $status
 * @property int $sort
 *
 * @package App\Models
 */
class Ability extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'status' => 'int',
		'sort' => 'int'
	];

	protected $fillable = [
		'name',
		'status',
		'sort'
	];

    static public function deleteByMemberId($member_id)
    {
        $items = static::all()->toArray();
        foreach ($items as $item) {
            $row = MemberAbilityGrade::where(['member_id'=>$member_id,'ability_id'=>$item['id']])->first();

            if ($row) {
                $row->where(['member_id'=>$member_id,'ability_id'=>$item['id']])->delete();
            }
        }

    }

    static public function getAllWithSort($member_id)
    {
        $items = [];
        $grades = MemberAbilityGrade::where(['member_id'=>$member_id])->orderBy('grade', 'DESC')->get()->toArray();
        $abilities = static::getAllIndexById();
        foreach ($grades as $key => $grade) {
            $item = [];
            $item['grade'] = $grade['grade'];
            $item['sort'] = $key + 1;
            $item['name'] = $abilities[$grade['ability_id']]['name'];
            $item['ability_id'] = $grade['ability_id'];
            $item['member_id'] = $member_id;
            $items[$grade['ability_id']] = $item;
        }

        return $items;
    }

    static public function getAllIndexById()
    {
        $data = [];
        $abilities = static::all();
        foreach ($abilities as $ability) {
            $data[$ability->id] = $ability->toArray();
        }
        return $data;

    }
}
