<?php

namespace App\Http\Controllers\Home;

use App\Models\Answer;
use App\Models\Interest;
use App\Models\Major;
use App\Models\Potential;
use App\Models\PotentialHasQuality;
use App\Models\Quality;
use App\Models\Report;
use App\Models\Shake;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EvaluationController extends Controller
{
    public function index()
    {
        return view('evaluation.index');
    }

    public function evaluate(Request $request)
    {
        $member = ['id'=>4];
        $post = $request->post();


//        $answers = [];
//        $answers = array_merge($answers, Answer::makeAnswers($post['cat_a'],'cat_a', $member['id']));
//        $answers = array_merge($answers, Answer::makeAnswers($post['cat_b'],'cat_b', $member['id']));
//        $answers = array_merge($answers, Answer::makeAnswers($post['cat_c'],'cat_c', $member['id']));
//        if (!empty($answers)) {
//
//            Answer::insert($answers);
//        }

        Answer::gradeCatA($member['id']); //计算兴趣
        Answer::gradeCatB($member['id']); //才干 能力 得分
        Answer::gradeCatC($member['id']); // 性格得分
        Answer::gradeQuality($member['id']); //素质模型
        Answer::gradePotential($member['id']); //计算潜能
        Answer::gradeShake($member['id']); //计算型格
        Answer::gradeMajor($member['id']); //计算专业




        return ($post);
    }

    public function truncate()
    {

    }

    public function report($member_id)
    {
        $data = [];
        //测评报告
        $report = new Report();
        $report->created_at = time();
        $data['report'] = $report;
        //用户信息
        $user = User::where(['id' => $member_id])->first();
        $data['user'] = $user;

        //潜能
        $potentials = Potential::getAllIndexById();
        $data['potentials'] = $potentials;
        //兴趣
        $interests = Interest::getAllIndexById();
        $data['interests'] = $interests;
        //型格
        $shakes = Shake::getAllIndexById();
        $data['shakes'] = $shakes;
        //专业
        $majors = Major::getAllIndexById();
        $data['majors'] = $majors;


        //潜能得分
        $potential_grades = Potential::getGradesByMemberId($member_id);
        $data['potential_grades'] = $potential_grades;
        $level_grades = Potential::levelGrades($potential_grades);
        $data['level_grades'] = $level_grades;

        //素质模型得分
        $quality_grades = Quality::getGradesByMemberId($member_id);
        $data['quality_grades'] = $quality_grades;

        //兴趣得分
        $interest_grades = Interest::getGradesByMemberId($member_id);
        $data['interest_grades'] = $interest_grades;

        //型格得分
        $shake_grades = Shake::getGradesByMemberId($member_id)->toArray();
        $shake_grades = Shake::addInterestPotentialGrade($shake_grades, $shakes, $potential_grades, $interest_grades);
        $data['shake_grades'] = $shake_grades;

        //专业得分
        $major_grades = Major::getGradesByMemberId($member_id);
        $data['major_grades'] = $major_grades;

        //最佳潜能对应素质模型
        $best_potential_has_qualities = Potential::getQualities($potential_grades[0]['potential_id']);
        $best_potential_has_qualities = Potential::indexBy($best_potential_has_qualities, 'quality_id');
        $data['best_potential_has_qualities'] = $best_potential_has_qualities;
        $best_potential_quality_ids = array_keys($best_potential_has_qualities);

        //最佳潜能对应素质模型
        $best_potential_sorted_quality_grades = [];
        foreach ($quality_grades as $quality_grade) {
            if (in_array($quality_grade->quality_id, $best_potential_quality_ids)) {
                $best_potential_sorted_quality_grades[] = [
                    'quality_id' => $quality_grade['quality_id'],
                    'quality_grade' => $quality_grade['grade']
                ];
            }
        }
        $data['best_potential_sorted_quality_grades'] = $best_potential_sorted_quality_grades;

        //第二潜能对应素质模型
        $second_potential_has_qualities = Potential::getQualities($potential_grades[1]['potential_id']);
        $second_potential_has_qualities = Potential::indexBy($second_potential_has_qualities, 'quality_id');
        $data['second_potential_has_qualities'] = $second_potential_has_qualities;
        $second_potential_quality_ids = array_keys($second_potential_has_qualities);

        //第二潜能对应素质模型
        $second_potential_sorted_quality_grades = [];
        foreach ($quality_grades as $quality_grade) {
            if (in_array($quality_grade->quality_id, $second_potential_quality_ids)) {
                $second_potential_sorted_quality_grades[] = [
                    'quality_id' => $quality_grade['quality_id'],
                    'quality_grade' => $quality_grade['grade']
                ];
            }
        }
        $data['second_potential_sorted_quality_grades'] = $second_potential_sorted_quality_grades;

        //第三潜能对应素质模型
        $third_potential_has_qualities = Potential::getQualities($potential_grades[2]['potential_id']);
        $third_potential_has_qualities = Potential::indexBy($third_potential_has_qualities, 'quality_id');
        $data['third_potential_has_qualities'] = $third_potential_has_qualities;
        $third_potential_quality_ids = array_keys($third_potential_has_qualities);

        //第三潜能对应素质模型
        $third_potential_sorted_quality_grades = [];
        foreach ($quality_grades as $quality_grade) {
            if (in_array($quality_grade->quality_id, $third_potential_quality_ids)) {
                $third_potential_sorted_quality_grades[] = [
                    'quality_id' => $quality_grade['quality_id'],
                    'quality_grade' => $quality_grade['grade']
                ];
            }
        }
        $data['third_potential_sorted_quality_grades'] = $third_potential_sorted_quality_grades;

        //短板第一潜能对应素质模型
        $short_first_potential_has_qualities = Potential::getQualities($potential_grades[8]['potential_id']);
        $short_first_potential_has_qualities = Potential::indexBy($short_first_potential_has_qualities, 'quality_id');
        $data['short_first_potential_has_qualities'] = $short_first_potential_has_qualities;
        $short_first_potential_quality_ids = array_keys($short_first_potential_has_qualities);
        //短板第一潜能对应素质模型
        $short_first_potential_sorted_quality_grades = [];
        foreach ($quality_grades as $quality_grade) {
            if (in_array($quality_grade->quality_id, $short_first_potential_quality_ids)) {
                $short_first_potential_sorted_quality_grades[] = [
                    'quality_id' => $quality_grade['quality_id'],
                    'quality_grade' => $quality_grade['grade']
                ];
            }
        }
        $data['short_first_potential_sorted_quality_grades'] = $short_first_potential_sorted_quality_grades;

        //短板第二潜能对应素质模型
        $short_second_potential_has_qualities = Potential::getQualities($potential_grades[7]['potential_id']);
        $short_second_potential_has_qualities = Potential::indexBy($short_second_potential_has_qualities, 'quality_id');
        $data['short_second_potential_has_qualities'] = $short_second_potential_has_qualities;
        $short_second_potential_quality_ids = array_keys($short_second_potential_has_qualities);
        //短板第二潜能对应素质模型
        $short_second_potential_sorted_quality_grades = [];
        foreach ($quality_grades as $quality_grade) {
            if (in_array($quality_grade->quality_id, $short_second_potential_quality_ids)) {
                $short_second_potential_sorted_quality_grades[] = [
                    'quality_id' => $quality_grade['quality_id'],
                    'quality_grade' => $quality_grade['grade']
                ];
            }
        }
        $data['short_second_potential_sorted_quality_grades'] = $short_second_potential_sorted_quality_grades;










        //潜能js数据
        //行为模式
        $html = view('evaluation.report',$data)->__toString();
        file_put_contents('zc.html',$html);
        return $html;


    }
}
