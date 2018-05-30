<?php

namespace App\Http\Controllers\Project;

use App\Models\Ability;
use App\Models\Personality;
use App\Models\Quality;
use App\Models\QualityHasAbility;
use App\Http\Controllers\Controller;
use App\Models\QualityHasPersonality;

class ImportQualityController extends Controller
{
    public function index()
    {
        $this->makeData('素质模型相关-2.txt');
    }


    protected function makeData($file_name)
    {
        $file = public_path('questions').'/'.$file_name;
        if (file_exists($file)) {
            $lines = file($file);
            if (!empty($lines)) {
                foreach ($lines as $line) {
                    $info = explode(' ', $line);
                    $quality_name = $info[0];
                    $quality_id = $this->getQualityId($quality_name);

                    $type_1 = explode('、',$info[1]);
                    $this->updateQualityHasAbility($type_1, 1, $quality_id);
                    $type_2 = explode('、',$info[2]);
                    $this->updateQualityHasAbility($type_2, 2, $quality_id);
                    $type_3 = explode('、',$info[3]);
                    $this->updateQualityHasAbility($type_3, 3, $quality_id);
                    $type_4 = explode('、',$info[4]);
                    $this->updateQualityHasAbility($type_4, 4, $quality_id);



                    $quality = Quality::find($quality_id);
                    $quality->max = trim($info[5]);
                    $min = trim($info[6]);
                    $quality->min = str_replace('负', '-', $min);

                    $mbti120 = $info['7'];
                    $this->updateQualityHasPersonality($quality_id, $mbti120, 1.2);
                    $mbti110 = $info['8'];
                    $this->updateQualityHasPersonality($quality_id, $mbti110, 1.1);
                    $mbti90 = $info['9'];
                    $this->updateQualityHasPersonality($quality_id, $mbti90, 0.9);
                    $mbti80 = $info['10'];
                    $this->updateQualityHasPersonality($quality_id, $mbti80, 0.8);
                    $quality->save();



                }


            }

            return $lines;
        } else {
            return '没有文件';
        }
    }

    protected function updateQualityHasPersonality($quality_id, $type, $ratio)
    {
        $type = trim($type);
        if ($type == '-') {
            return false;
        }
        $len = strlen($type);

        for ($i = 0; $i < $len; $i++) {

            if (!isset($type[$i])) {
                var_dump($type);
                die;
            }
            $letter = $type[$i];

            $personality = Personality::where(['name'=>$letter])->first();
            if ($personality) {
                $where = ['quality_id'=>$quality_id,'personality_id'=>$personality->id];
                $model = QualityHasPersonality::where($where)->first();
                if (!$model) {
                    $model = new QualityHasPersonality();
                    $model->quality_id = $quality_id;
                    $model->personality_id = $personality->id;
                    $model->ratio = $ratio;
                    $model->type_name = $type;
                    $model->save();
                }





            } else {
                var_dump('找不到的字母');
                var_dump($letter);
                die;
            }

        }

    }

    protected function getQualityId($quality_name)
    {
        $quality_name = trim($quality_name);
        $quality = Quality::where(['name'=>$quality_name])->first();
        if (!$quality) {
            $quality = new Quality();
            $quality->name = $quality_name;
            $quality->save();
        }
        return $quality->id;
    }

    protected function updateQualityHasAbility($ability_names, $type_id, $quality_id)
    {
        if (!empty($ability_names)) {
            foreach ($ability_names as $ability_name) {
                if (empty($ability_name)) {
                    var_dump($ability_names);
                    continue;
                }
                $ability_id = $this->getAbilityId($ability_name);
                if ($ability_id > 0){
                    $where=[
                        'quality_id' => $quality_id,
                        'ability_id' => $ability_id
                    ];

                    $model =  QualityHasAbility::where($where)->first();
                    if (!$model) {
                        $model = new QualityHasAbility();
                        $model->quality_id = $quality_id;
                        $model->ability_id = $ability_id;

                    }

                    $model->type_id = $type_id;
                    $model->save();


                } else {
                    var_dump('未找到对应才干：'.$ability_name);
                    die;
                }
            }
        }


    }

    protected function getAbilityId($ability_name)
    {
        $ability = Ability::where(['name'=>$ability_name])->first();
        if ($ability) {
            return $ability->id;
        } else {
            return false;
        }

    }


}
