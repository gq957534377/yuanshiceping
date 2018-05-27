<?php

namespace App\Http\Controllers\Api;

use App\Models\Answer;
use App\Models\MemberHasSubject;
use App\Models\Question;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;

class EvaluationController extends Controller
{
    public function questions(Request $request)
    {
        $where = [];
        if ($request->query->get('category_id')) {
            $where['category_id'] = $request->query->get('category_id');
        }
        $questions = Question::with('subQuestions')->where($where)->get();

        return $this->sendResponse($questions, '成功');
    }

    public function answer(Request $request)
    {
        $post = $request->post();

        //记录测评每一题的答案
        $where = [
            'member_id' => $post['member_id'],
            'subject_id' => $post['subject_id'],
            'category_id' => $post['category_id'],
            'question_id' => $post['question_id'],
        ];
        $answer = Answer::firstOrCreate($where);
        $answer->selected = $post['selected'];
        $answer->save();


        //记录测试进度
        $where_member_subject = [
            'member_id' => $post['member_id'],
            'subject_id' => $post['subject_id'],
        ];
        $member_has_subject = MemberHasSubject::firstOrNew($where_member_subject);

        $member_has_subject->member_id = $answer->member_id;
        $member_has_subject->subject_id = $answer->subject_id;
        $member_has_subject->category_id = $answer->category_id;
        $member_has_subject->question_id = $answer->question_id;
        $member_has_subject->current_key = $post['current_key'];
        $member_has_subject->subject_status = 1;
        $member_has_subject->save();

        return $this->sendResponse($member_has_subject, 'success');

    }

    public function grade(Request $request)
    {
        $member_id = $request->post('member_id');
        $category_id = $request->post('category_id');


        $where_member_subject = [
            'member_id' => $member_id,
        ];
        $member_has_subject = MemberHasSubject::firstOrNew($where_member_subject);

        switch ($category_id) {
            case 1:
                Answer::gradeCatA($member_id); //计算兴趣
                $member_has_subject->subject_status = 1;

                break;

            case 2:
                Answer::gradeCatB($member_id); //才干 能力 得分
                $member_has_subject->subject_status = 1;
                break;

            case 3:
                Answer::gradeCatC($member_id); // 性格得分
                Answer::gradeQuality($member_id); //素质模型
                Answer::gradePotential($member_id); //计算潜能
                Answer::gradeShake($member_id); //计算型格
                Answer::gradeMajor($member_id); //计算专业

                $member_has_subject->subject_status = 2;

                break;
        }
        $member_has_subject->save();

    }

    public function history(Request $request)
    {
        $post = $request->post();

        $where = [
            'member_id' => $post['member_id'],
            'subject_id' => $post['subject_id'],
        ];

        $history = MemberHasSubject::firstOrCreate($where);

        return $this->sendResponse($history, 'success');

    }
}
