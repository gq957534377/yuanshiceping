<?php

namespace App\Http\Controllers\Home;

use App\Models\Answer;
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
        $user = User::where(['id' => $member_id])->first();

        //用户信息
        //测评报告

        //潜能得分
        //潜能js数据
        //行为模式

        return view('evaluation.report');


    }
}
