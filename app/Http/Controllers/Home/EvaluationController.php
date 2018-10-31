<?php

namespace App\Http\Controllers\Home;

use App\Models\Answer;
use App\Models\Interest;
use App\Models\Major;
use App\Models\MajorDetail;
use App\Models\MemberAbilityGrade;
use App\Models\MemberInterestGrade;
use App\Models\MemberMajorGrade;
use App\Models\MemberPersonalityGrade;
use App\Models\MemberPotentialGrade;
use App\Models\MemberQualityGrade;
use App\Models\MemberShakeGrade;
use App\Models\Order;
use App\Models\Personality;
use App\Models\Potential;
use App\Models\Quality;
use App\Models\Report;
use App\Models\Shake;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EvaluationController extends Controller
{
    public function index()
    {
        return view('evaluation.index');
    }

    public function reports()
    {
        $data = [];
        $reports = Report::all();
        $data['reports'] = $reports;
        return view('evaluation.reports', $data);
    }

    public function grades($member_id, $order_number)
    {
        Answer::gradeCatB($member_id, $order_number); //才干 能力 得分

        Answer::gradeCatA($member_id, $order_number); //计算兴趣

        Answer::gradeCatC($member_id, $order_number); // 性格得分
        Answer::gradeQuality($member_id, $order_number); //素质模型
        Answer::gradePotential($member_id, $order_number); //计算潜能
        Answer::gradeShake($member_id, $order_number); //计算型格
        Answer::gradeMajor($member_id, $order_number); //计算专业

        return $this->gradeDetail($member_id, $order_number);
    }

    public function gradeDetail($member_id, $order_number)
    {
        $data = [];

        //Answer::gradeCatA($member_id, $order_number); //计算兴趣
        $interest_grades = MemberInterestGrade::gradeList($member_id, $order_number);
        $data['interest_grades'] = $interest_grades;

        //Answer::gradeCatB($member_id, $order_number); //才干 能力 得分
        $ability_grades = MemberAbilityGrade::gradeList($member_id, $order_number);
        $data['ability_grades'] = $ability_grades;

        //Answer::gradeCatC($member_id, $order_number); // 性格得分
        $personality_grades = MemberPersonalityGrade::gradeList($member_id, $order_number);
        $data['personality_grades'] = $personality_grades;

        //Answer::gradeQuality($member_id, $order_number); //素质模型
        $quality_grades = MemberQualityGrade::gradeList($member_id, $order_number);
        $data['quality_grades'] = $quality_grades;

        //Answer::gradePotential($member_id, $order_number); //计算潜能
        $potential_grades = MemberPotentialGrade::gradeList($member_id, $order_number);
        $data['potential_grades'] = $potential_grades;

        //Answer::gradeShake($member_id, $order_number); //计算型格
        $shake_grades = MemberShakeGrade::gradeList($member_id, $order_number);
        $data['shake_grades'] = $shake_grades;

        //Answer::gradeMajor($member_id, $order_number); //计算专业
        $major_grades = MemberMajorGrade::gradeList($member_id, $order_number);
        $data['major_grades'] = $major_grades;
        return view('evaluation.grade-detail', $data);

    }

    // 计算职业匹配
    public function gradesPosition($member_id, $order_number)
    {
        $data = [];
        $grade = 0;

        //Answer::gradeCatB($member_id, $order_number); //才干 能力 得分
        $ability_grades = MemberAbilityGrade::gradeList($member_id, $order_number);
        $data['ability_grades'] = array_slice($ability_grades, 0, 6);
        $zhixing = ['成就', '统筹', '信仰', '公平', '审慎', '纪律', '专注', '责任', '排难'];
        $siwei = ['分析', '回顾', '理念', '搜集', '思维', '学习', '战略'];
        foreach ($data['ability_grades'] as $key) {
            if (in_array($key['name'], $zhixing)) $grade += 5;
            if ($key['name'] == '专注') $grade += 10;
            if (in_array($key['name'], $siwei)) $grade += 5;
            if ($key['name'] == '分析') $grade += 10;

        }
        $grade = round(($grade / 30) * 20, 2);
        //Answer::gradeCatC($member_id, $order_number); // 性格得分
        $personality_grades = MemberPersonalityGrade::gradeList($member_id, $order_number);
        $data['personality_grades'] = array_slice($personality_grades, 0, 4);
        $array = [];
        foreach ($data['personality_grades'] as $personality_grade) {
            array_push($array, $personality_grade['name']);
        }
        if (in_array('N', $array) && in_array('T', $array)) $grade += 10;
        if (in_array('J', $array) && in_array('S', $array)) $grade += 10;
        if (in_array('J', $array)) $grade += 5;
        if (in_array('T', $array)) $grade += 5;

        //Answer::gradeQuality($member_id, $order_number); //素质模型
        $quality_grades = MemberQualityGrade::gradeList($member_id, $order_number);
        $data['quality_grades'] = $quality_grades;
        foreach ($data['quality_grades'] as $quality_grade) {

            switch ($quality_grade['name']) {
                case '逻辑性':
                    $grade = static::judgeGrade($grade, $quality_grade['grade']);
                    break;
                case '坚韧性':
                    $grade = static::judgeGrade($grade, $quality_grade['grade']);
                    break;
                case '细节处理能力':
                    $grade = static::judgeGrade($grade, $quality_grade['grade']);
                    break;
                case '总结能力':
                    $grade = static::judgeGrade($grade, $quality_grade['grade']);
                    break;
                case '原则性':
                    $grade = static::judgeGrade($grade, $quality_grade['grade']);
                    break;
            }
        }
        //Answer::gradePotential($member_id, $order_number); //计算潜能
        $potential_grades = MemberPotentialGrade::gradeList($member_id, $order_number);
        $data['potential_grades'] = $potential_grades;
        $potential = ['思维研究类', '动手执行类', '意志坚定类'];
        foreach ($data['potential_grades'] as $key => $potential_grade) {
            if ($key < 3) {
                if (in_array($potential_grade['name'], $potential)) $grade += 10;
            }
            if ($key >= 3 || $key < 5) {
                if (in_array($potential_grade['name'], $potential)) $grade += 4;
            }
        }
        return '您于JAVA工程师的匹配度为' . $grade . '%';

    }

    static public function judgeGrade($grade, $quality_grade)
    {
        if ($quality_grade > 60) {
            $grade += 10;
        } elseif ($quality_grade = 60 && $quality_grade >= 45) {
            $grade += 5;
        }
        return $grade;
    }

    public function report(Request $request, $member_id)
    {
        $data = [];
        $order_number = $request->query->get('order_number');
        $where = [
            'order_number' => $order_number,
        ];
        //测评报告
        $report = Report::where($where)->first();
        $order = Order::where(['order_id' => $order_number])->first()->toArray();
        if (!empty($order) && $order['class_id'] != 4) {
            if (!empty($report)) {
                if (!empty($report->path) && file_exists(base_path('public' . '/' . $report->path))) {
                    return file_get_contents(base_path('public' . '/' . $report->path));
                }
            } else {
                exit('没有相关数据');
            }
        } else if (empty($order)) {
            exit('没有相关数据');
        }

        $data['class_id'] = $order['class_id'];
        $report->created_at = time();
        $data['report'] = $report;

        //潜能
        $potentials = Potential::getAllIndexById();
        $data['potentials'] = $potentials;
        //兴趣
        $interests = Interest::getAllIndexById();
        $data['interests'] = $interests;
        //型格
        $shakes = Shake::getAllIndexById();
        $data['shakes'] = $shakes;
        //素质
        $qualities = Quality::orderBy('sort', 'DESC')->get();
        $data['qualities'] = $qualities;
        //专业
        $majors = Major::getAllIndexById();
        $data['majors'] = $majors;
        //专业详情
        $major_details = MajorDetail::getAllIndexByMajorId();
        $data['major_details'] = $major_details;

        //潜能得分
        $potential_grades = Potential::getGradesByMemberId($member_id, $order_number);
        $data['potential_grades'] = $potential_grades;
        $level_grades = Potential::levelGrades($potential_grades);
        $data['level_grades'] = $level_grades;

        //素质模型得分
        $quality_grades = Quality::getGradesByMemberId($member_id, $order_number);
        $data['quality_grades'] = $quality_grades;

        //兴趣得分
        $interest_grades = Interest::getGradesByMemberId($member_id, $order_number);
        $data['interest_grades'] = $interest_grades;

        //型格得分
        $shake_grades = Shake::getGradesByMemberId($member_id, $order_number)->toArray();
        $shake_grades = Shake::addInterestPotentialGrade($shake_grades, $shakes, $potential_grades, $interest_grades);
        $data['shake_grades'] = $shake_grades;

        //专业得分
        $major_grades = Major::getGradesByMemberId($member_id, $order_number);
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
        //最佳潜能对应的行为模式
        //潜能对应的素质模型第一 对应的第一类才干能力
        $best_potential_abilities = Potential::getBestAbilities($member_id, $potential_grades[0]->potential_id, $order_number);
        $data['best_potential_abilities'] = $best_potential_abilities;

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
        //第二潜能对应的行为模式
        //潜能对应的素质模型第一 对应的第一类才干能力
        $second_potential_abilities = Potential::getBestAbilities($member_id, $potential_grades[1]->potential_id, $order_number);
        $data['second_potential_abilities'] = $second_potential_abilities;

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
        $html = view('evaluation.report', $data)->__toString();

        if ($data['class_id'] != 4) {
            $report_dir = base_path('public') . '/report';
            if (!is_dir($report_dir)) {
                mkdir($report_dir);
            }
            $report_path = $report_dir . '/' . md5($member_id . $order_number) . '.html';
            $report_url = 'report/' . md5($member_id . $order_number) . '.html';

            file_put_contents($report_path, $html);
        }

        $report->subject_id = 1;
        $report->member_id = $member_id;
        $report->path = $report_url ?? '';
        $report->order_number = $order_number;
        $report->save();
        return $html;


    }

    /**
     * 报告展示
     *
     * @param Request $request
     * @return View
     */
    public function reportNew(Request $request, $member_id)
    {
        $data = [];
        $order_number = $request->query->get('order_number');
        $where = [
            'order_number' => $order_number,
        ];
        //测评报告
        $report = Report::where($where)->first();
        $order = Order::where(['order_id' => $order_number])->first()->toArray();
        if (!empty($order)) {
            if (!empty($report)) {
                if (!empty($report->path) && file_exists(base_path('public' . '/' . $report->path))) {
                    return file_get_contents(base_path('public' . '/' . $report->path));
                }
            } else {
                exit('没有相关数据');
            }
        } else if (empty($order)) {
            exit('没有相关数据');
        }

        $report->created_at = time();
        $data['report'] = $report;

        //潜能
        $potentials = Potential::getAllIndexById();
        $data['potentials'] = $potentials;
        //兴趣
        $interests = Interest::getAllIndexById();
        $data['interests'] = $interests;
        //型格
        $shakes = Shake::getAllIndexById();
        $data['shakes'] = $shakes;
        //素质
        $qualities = Quality::orderBy('sort', 'DESC')->get();
        $data['qualities'] = $qualities;
        //专业
        $majors = Major::getAllIndexById();
        $data['majors'] = $majors;
        //专业详情
        $major_details = MajorDetail::getAllIndexByMajorId();
        $data['major_details'] = $major_details;

        //潜能得分
        $potential_grades = Potential::getGradesByMemberId($member_id, $order_number);
        $data['potential_grades'] = $potential_grades;
        $level_grades = Potential::levelGrades($potential_grades);
        $data['level_grades'] = $level_grades;

        //潜能得分倒序
        $potential_grades_asc = Potential::getGradesByMemberIdAsc($member_id, $order_number);
        $data['potential_grades_asc'] = $potential_grades_asc;

        //素质模型得分
        $quality_grades = Quality::getGradesByMemberId($member_id, $order_number);
        $data['quality_grades'] = $quality_grades;

        //兴趣得分
        $interest_grades = Interest::getGradesByMemberId($member_id, $order_number);
        $data['interest_grades'] = $interest_grades;

        //性格得分
        $personality = Personality::getGradesByMemberId($member_id, $order_number);
        $data['second_potential_detail'] = Personality::getSecondPotentialDetail($personality);

        //型格得分
        $shake_grades = Shake::getGradesByMemberId($member_id, $order_number)->toArray();
        $shake_grades = Shake::addInterestPotentialGrade($shake_grades, $shakes, $potential_grades, $interest_grades);
        $data['shake_grades'] = $shake_grades;

        //专业得分
        $major_grades = Major::getGradesByMemberId($member_id, $order_number);
        $data['major_grades'] = $major_grades;

        //不适合的专业
        $short_major_grades = Major::getShortGradesByMemberId($member_id, $order_number);
        $data['short_major_grades'] = $short_major_grades;


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
        //最佳潜能对应的行为模式
        //潜能对应的素质模型第一 对应的第一类才干能力
        $best_potential_abilities = Potential::getBestAbilities($member_id, $potential_grades[0]->potential_id, $order_number);
        $data['best_potential_abilities'] = $best_potential_abilities;

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
        //第二潜能对应的行为模式
        //潜能对应的素质模型第一 对应的第一类才干能力
        $second_potential_abilities = Potential::getBestAbilities($member_id, $potential_grades[1]->potential_id, $order_number);
        $data['second_potential_abilities'] = $second_potential_abilities;

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

        //第三潜能对应的行为模式
        $third_potential_abilities = Potential::getBestAbilities($member_id, $potential_grades[2]->potential_id, $order_number);
        $data['third_potential_abilities'] = $third_potential_abilities;

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
                    'quality_grade' => $quality_grade['grade'],
                    'quality_short_description' => Quality::where('id',$quality_grade['quality_id'])->value('short_description')
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
                    'quality_grade' => $quality_grade['grade'],
                    'quality_short_description' => Quality::where('id',$quality_grade['quality_id'])->value('short_description')
                ];
            }
        }
        $data['short_second_potential_sorted_quality_grades'] = $short_second_potential_sorted_quality_grades;
        //潜能js数据
        //行为模式
        return view('evaluation.report_new', compact('data'));

    }

    public function reportDetail($id,$grade,$short)
    {
        $detail = MajorDetail::where('major_id',$id)->first();
        return view('evaluation.report_detail',compact('detail','grade','short'));
    }

}
