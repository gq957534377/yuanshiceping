<?php

/**
 * Created by Reliese Model.
 * Date: Tue, 01 May 2018 17:50:32 +0800.
 */

namespace App\Models;

use Reliese\Database\Eloquent\Model as Eloquent;

/**
 * Class Answer
 * 
 * @property int $id
 * @property int $member_id
 * @property int $subjects_id
 * @property int $categories_id
 * @property int $question_id
 * @property int $sort
 * @property string $selected
 *
 * @package App\Models
 */
class Answer extends Eloquent
{
	public $timestamps = false;

	protected $casts = [
		'member_id' => 'int',
		'subjects_id' => 'int',
		'categories_id' => 'int',
		'question_id' => 'int',
		'sort' => 'int'
	];

	protected $fillable = [
		'member_id',
		'subjects_id',
		'categories_id',
		'question_id',
		'sort',
		'selected'
	];


	static public function makeAnswers($raws, $type, $member_id, $sort = 0, $subject_id = 1)
    {
        $category_id = 0;
        switch ($type) {
            case 'cat_a':
                $category_id = 1;
                break;

            case 'cat_b':
                $category_id = 2;
                break;

            case 'cat_c':
                $category_id = 3;
                break;
        }
        $answers = [];
        if (!empty($raws)) {
            foreach ($raws as $question_id => $selected) {
                $answers[] = static::makeAnswer($selected, $question_id, $category_id, $member_id, $sort, $subject_id);
            }
        }
        return $answers;
    }

    static public function makeAnswer($selected, $question_id, $category_id, $member_id, $sort = 0, $subject_id = 1)
    {
        $answer['sort'] = $sort;
        $answer['member_id'] = $member_id;
        $answer['subject_id'] = $subject_id;
        $answer['category_id'] = $category_id;
        $answer['question_id'] = $question_id;
        $answer['selected'] = $selected;

        return $answer;
    }

    static public function gradeCatA($member_id)
    {
        $interests = Interest::all()->toArray();
        $interest_grades = [];

        foreach ($interests as $interest) {
            $interest_grades[$interest['id']] = [
                'member_id' => $member_id,
                'interest_id' => $interest['id'],
                'grade' => 0,
                'weight' => $interest['sort'],
            ];
        }
        $where = [
            'subject_id' => 1,
            'category_id' => 1,
            'member_id' => $member_id
        ];
        $cat_a_answers = Answer::where($where)->get()->toArray();
        $answers = [];
        foreach ($cat_a_answers as $cat_a_answer) {
            $answers[$cat_a_answer['question_id']] = $cat_a_answer;
        }

        $question_ids = array_keys($answers);

        $questions = Question::whereIn('id',$question_ids)->with('subQuestions')->get()->toArray();
        foreach ($questions as $question) {

            $selected = $answers[$question['id']]['selected'];
            if ($selected == 1) {
                if ($question['sub_questions'][0]['type_id'] > 0) {
                    $interest_grades[$question['sub_questions'][0]['type_id']]['grade'] += 10;
                }
            } elseif ($selected == 2) {
                if ($question['sub_questions'][1]['type_id'] > 0) {
                    $interest_grades[$question['sub_questions'][1]['type_id']]['grade'] += 10;
                }
            }


        }

        Interest::deleteByMemberId($member_id);

        MemberInterestGrade::insert($interest_grades);

    }

    static public function gradeCatB($member_id)
    {
        $abilities = Ability::all()->toArray();
        $ablility_grades = [];

        foreach ($abilities as $ability) {
            $ablility_grades[$ability['id']] = [
                'member_id' => $member_id,
                'ability_id' => $ability['id'],
                'grade' => 0,
                'weight' => $ability['sort'],
            ];
        }
        $where = [
            'subject_id' => 1,
            'category_id' => 2,
            'member_id' => $member_id
        ];
        $cat_b_answers = Answer::where($where)->get()->toArray();
        $answers = [];
        foreach ($cat_b_answers as $cat_b_answer) {
            $answers[$cat_b_answer['question_id']] = $cat_b_answer;
        }

        $question_ids = array_keys($answers);

        $questions = Question::whereIn('id',$question_ids)->with('subQuestions')->get()->toArray();
        foreach ($questions as $question) {

            $selected = $answers[$question['id']]['selected'];
            if ($selected == 1) {

                if ($question['sub_questions'][0]['type_id'] > 0) {
                    $ablility_grades[$question['sub_questions'][0]['type_id']]['grade'] += 2;
                }
            } elseif ($selected == 2) {
                if ($question['sub_questions'][0]['type_id'] > 0) {
                    $ablility_grades[$question['sub_questions'][0]['type_id']]['grade'] += 1;
                }
            } elseif ($selected == 3) {

            } elseif ($selected == 4) {
                if ($question['sub_questions'][1]['type_id'] > 0) {
                    $ablility_grades[$question['sub_questions'][1]['type_id']]['grade'] += 1;
                }
            } elseif ($selected == 5) {
                if ($question['sub_questions'][1]['type_id'] > 0) {
                    $ablility_grades[$question['sub_questions'][1]['type_id']]['grade'] += 2;
                }
            }


        }

        //分数修改为百分制
        foreach ($abilities as $ablility) {

            $ablility_grades[$ablility['id']]['grade'] = round($ablility_grades[$ablility['id']]['grade']/($ablility['number']*2)*100,1);

        }

        Ability::deleteByMemberId($member_id);
        MemberAbilityGrade::insert($ablility_grades);

    }

    static public function gradeCatC($member_id)
    {
        $personalities = Personality::all()->toArray();
        $personality_grades = [];

        foreach ($personalities as $personality) {
            $personality_grades[$personality['id']] = [
                'member_id' => $member_id,
                'personality_id' => $personality['id'],
                'grade' => 0,
                'weight' => $personality['sort'],
            ];
        }

        $where = [
            'subject_id' => 1,
            'category_id' => 3,
            'member_id' => $member_id
        ];
        $cat_c_answers = Answer::where($where)->get()->toArray();
        $answers = [];
        foreach ($cat_c_answers as $cat_c_answer) {
            $answers[$cat_c_answer['question_id']] = $cat_c_answer;
        }

        $question_ids = array_keys($answers);

        $questions = Question::whereIn('id',$question_ids)->with('subQuestions')->get()->toArray();
        foreach ($questions as $question) {

            $selected = $answers[$question['id']]['selected'];
            if ($selected == 1) {

                if ($question['sub_questions'][0]['type_id'] > 0) {
                    $personality_grades[$question['sub_questions'][0]['type_id']]['grade'] += 10;

                }
            } elseif ($selected == 2) {
                if ($question['sub_questions'][1]['type_id'] > 0) {
                    $personality_grades[$question['sub_questions'][1]['type_id']]['grade'] += 10;
                }
            }



        }


        Personality::deleteByMemberId($member_id);
        MemberPersonalityGrade::insert($personality_grades);

    }

    static public function gradeQuality($member_id)
    {
        Quality::grade($member_id);
    }

    static public function gradePotential($member_id)
    {
        Potential::grade($member_id);
    }

    static public function gradeShake($member_id)
    {
        Shake::grade($member_id);
    }

    static public function gradeMajor($member_id)
    {
        Major::grade($member_id);
    }





}
