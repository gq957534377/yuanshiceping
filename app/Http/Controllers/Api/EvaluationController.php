<?php

namespace App\Http\Controllers\Api;

use App\Models\Question;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EvaluationController extends Controller
{
    public function questions()
    {
        $questions = Question::with('subQuestions')->get();

        return $questions;
    }
}
