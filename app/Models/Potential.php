<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 03 May 2018 10:08:16 +0800.
 */

namespace App\Models;

/**
 * Class Potential
 * 
 * @property int $id
 * @property string $name
 * @property int $status
 * @property string $remark
 * @property int $created_at
 * @property int $updated_at
 * @property int $sort
 *
 * @package App\Models
 */
class Potential extends Common
{
	protected $casts = [
		'status' => 'int',
		'created_at' => 'int',
		'updated_at' => 'int',
		'sort' => 'int'
	];

	protected $fillable = [
		'name',
		'status',
		'remark',
		'sort'
	];

	static public function grade($member_id)
    {
        //素质模型
        $potentials = static::getAllIndexById();
        $potential_grades = [];

        foreach ($potentials as $potential) {
            $potential_grades[$potential['id']] = [
                'member_id' => $member_id,
                'potential_id' => $potential['id'],
                'grade' => 0,
                'weight' => $potential['sort'],
            ];
        }


        foreach ($potentials as $potential) {

            $potential_grades[$potential['id']]['grade'] = static::gradeOne($potential, $member_id);
        }

        static::deleteByMemberId($member_id);
        MemberPotentialGrade::insert($potential_grades);

    }

    static public function gradeOne($potential, $member_id)
    {
        $grade = 0;
        $quality_names = explode('+', $potential['remark']);
        $number = 0;
        foreach ($quality_names as $quality_name) {
            $grade += static::getQualityGrade($quality_name, $member_id);
            $number++;
        }

        return $grade/$number;
    }

    static public function getQualityGrade($quality_name, $member_id)
    {
        $quality_grade = 0;
        $quality = Quality::where(['name' => $quality_name])->first();
        if ($quality) {
            $where = [
                'quality_id' => $quality->id,
                'member_id' => $member_id
            ];
            $member_quality_grade = MemberQualityGrade::where($where)->first();

            if ($member_quality_grade) {
                $quality_grade = $member_quality_grade->grade;
            }

            return $quality_grade;

        } else {
            var_dump('无效的素质模型名称：'.$quality_name);

        }

    }

    static public function deleteByMemberId($member_id)
    {
        $items = static::all()->toArray();
        foreach ($items as $item) {
            $row = MemberPotentialGrade::where(['member_id'=>$member_id,'potential_id'=>$item['id']])->first();

            if ($row) {
                $row->where(['member_id'=>$member_id,'potential_id'=>$item['id']])->delete();
            }
        }

    }
}
