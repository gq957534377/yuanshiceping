<?php

namespace App\Http\Controllers\Project;

use App\Models\Ability;
use App\Models\Interest;
use App\Models\Personality;
use App\Models\Question;
use App\Models\SubQuestion;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ImportQuestionController extends Controller
{
    public function catA()
    {
        $this->insert($this->makeData('A类题.txt'));
    }

    public function catB()
    {
        $this->insert($this->makeData('B类题.txt'));
    }

    public function catC()
    {
        $this->insert($this->makeData('C类题.txt'));
    }

    public function insert($questions)
    {
        if (!empty($questions)) {
            foreach ($questions as $question) {
                $main = Question::where(['title'=>$question['question']['title']])->first();

                if (!$main) {
                    $main = new Question();
                }
                foreach ($question['question'] as $field => $value) {
                    if (empty($value)) continue;
                    $main->$field = $value;
                }
                $main->save();


                $sub_one = SubQuestion::where(['question_id'=>$main->id,'sort'=>1])->first();
                if (!$sub_one) {
                    $sub_one = new SubQuestion();
                    $question['sub_questions'][0]['question_id'] = $main->id;
                }
                foreach ($question['sub_questions'][0] as $field => $value) {
                    if (empty($value)) continue;
                    $sub_one->$field = $value;
                }
                $sub_one->save();
                $sub_two = SubQuestion::where(['question_id'=>$main->id,'sort'=>2])->first();
                if (!$sub_two) {
                    $sub_two = new SubQuestion();
                    $question['sub_questions'][1]['question_id'] = $main->id;

                }
                foreach ($question['sub_questions'][1] as $field => $value) {
                    if (empty($value)) continue;
                    $sub_two->$field = $value;
                }
                $sub_two->save();
            }
        }

    }


    protected function makeData($file_name)
    {
        $file = public_path('questions').'/'.$file_name;
        if (file_exists($file)) {
            $lines = file($file);
            switch ($file_name) {
                case 'A类题.txt':
                    $data = $this->makeCatAData($lines);
                    break;
                case 'B类题.txt':
                    $data = $this->makeCatBData($lines);
                    break;
                case 'C类题.txt':
                    $data = $this->makeCatCData($lines);
                    break;

                default:
                    $data = [];
                    break;
            }
            return $data;
        } else {
            return '没有文件';
        }
    }
    protected function makeCatAData($data)
    {
        $questions = [];
        //三行一个题
        if (count($data)%3 == 0) {
            $question = [];
            foreach ($data as $key => $line) {
                if (($key)%3 == 0 && $key != 0) {
                    $questions[] = $this->makeCatAQuestion($question);
                    $question = [];
                }
                $line = trim($line);
                $question[] = $line;

            }
            $questions[] = $this->makeCatAQuestion($question);
            return ($questions);

        } else {
            return 'A类题行数不对';
        }

    }

    protected function makeCatAQuestion($raw)
    {
        list($title, $type_name, $mark) = explode(' ', $raw[0]);
        $type_id = Interest::where(['name'=>$type_name])->first()->id;

        $question = [];
        if (!empty($raw)) {
            $question['question'] = [
                'subject_id' => 1,
                'category_id' => 1,
                'title' => $title
            ];


            $question['sub_questions'] = [
                [
                    'sort' => 1,
                    'subject_id' => 1,
                    'category_id' => 1,
                    'title' => $raw[1],
                    'type_id' => $mark==1?$type_id:0,
                    'type_name' => $mark==1?$type_name:''
                ],
                [
                    'sort' => 2,
                    'subject_id' => 1,
                    'category_id' => 1,
                    'title' => $raw[2],
                    'type_id' => $mark==-1?$type_id:0,
                    'type_name' => $mark==-1?$type_name:''
                ]
            ];

        }

        return $question;


    }

    protected function makeCatBData($data)
    {
        $questions = [];
        foreach ($data as $line) {
            $line = trim($line);
            if (!empty($line)) {
                $questions[] = $this->makeCatBQuestion($line);
            }
        }

        return $questions;


    }

    protected function makeCatBQuestion($raw)
    {
        list($title, $sub_one, $type_name_one, $sub_two, $type_name_two) = explode(' ', $raw);
        $type_one = Ability::where(['name'=>$type_name_one])->first();
        if (!$type_one) {
            $type_one = new Ability();
            $type_one->name = $type_name_one;
            $type_one->save();

        }
        $type_two = Ability::where(['name'=>$type_name_two])->first();
        if (!$type_two) {
            $type_two = new Ability();
            $type_two->name = $type_name_two;
            $type_two->save();

        }
        $question = [];
        if (!empty($raw)) {
            $question['question'] = [
                'subject_id' => 1,
                'category_id' => 2,
                'title' => $title
            ];


            $question['sub_questions'] = [
                [
                    'sort' => 1,
                    'subject_id' => 1,
                    'category_id' => 2,
                    'title' => $sub_one,
                    'type_id' => $type_one->id,
                    'type_name' => $type_name_one,

                ],
                [
                    'sort' => 2,
                    'subject_id' => 1,
                    'category_id' => 2,
                    'title' => $sub_two,
                    'type_id' => $type_two->id,
                    'type_name' => $type_name_two
                ]
            ];

        }

        return $question;

    }

    protected function makeCatCData($data)
    {
        $questions = [];
        //三行一个题
        if (count($data)%3 == 0) {
            $question = [];
            foreach ($data as $key => $line) {
                if (($key)%3 == 0 && $key != 0) {
                    $questions[] = $this->makeCatCQuestion($question);
                    $question = [];
                }
                $line = trim($line);
                $question[] = $line;

            }
            $questions[] = $this->makeCatCQuestion($question);
            return ($questions);

        } else {
            return 'C类题行数不对';
        }

    }

    protected function makeCatCQuestion($raw)
    {
        $question = [];
        if (!empty($raw)) {
            $question['question'] = [
                'subject_id' => 1,
                'category_id' => 3,
                'title' => $raw[0]
            ];

            $sub_one = explode(' ', $raw[1]);
            $sub_two = explode(' ', $raw[2]);

            $question['sub_questions'] = [
                [
                    'sort' => 1,
                    'subject_id' => 1,
                    'category_id' => 3,
                    'title' => $sub_one[0].' '.$sub_one[1],
                    'type_id' => Personality::where(['name'=>$sub_one['2']])->first()->id,
                    'type_name' =>$sub_one[2]
                ],
                [
                    'sort' => 2,
                    'subject_id' => 1,
                    'category_id' => 3,
                    'title' => $sub_two[0].' '.$sub_two[1],
                    'type_id' => Personality::where(['name'=>$sub_two['2']])->first()->id,
                    'type_name' =>$sub_two[2]
                ]
            ];

        }

        return $question;

    }


}
