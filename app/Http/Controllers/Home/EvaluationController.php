<?php

namespace App\Http\Controllers\Home;

use App\Models\Answer;
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
        $member = ['id'=>'3550'];
        $post = $request->post();


//        $answers = [];
//        $answers = array_merge($answers, Answer::makeAnswers($post['cat_a'],'cat_a', $member['id']));
//        $answers = array_merge($answers, Answer::makeAnswers($post['cat_b'],'cat_b', $member['id']));
//        $answers = array_merge($answers, Answer::makeAnswers($post['cat_c'],'cat_c', $member['id']));
//        if (!empty($answers)) {
//
//            Answer::insert($answers);
//        }

        Answer::gradeCatA($member['id']);
        Answer::gradeCatB($member['id']);
        Answer::gradeCatC($member['id']);
        Answer::gradeQuality($member['id']); //素质模型
        Answer::gradePotential($member['id']); //计算潜能
        Answer::gradeShake($member['id']); //计算型格




        return ($post['cat_a']);
    }
}
