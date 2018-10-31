<?php

/**
 * Created by Reliese Model.
 * Date: Thu, 26 Apr 2018 14:11:24 +0800.
 */

namespace App\Models;
use Illuminate\Support\Facades\DB;

/**
 * Class Personality
 * 
 * @property int $id
 * @property string $name
 * @property int $status
 * @property string $remark
 * @property int $sort
 *
 * @package App\Models
 */
class Personality extends Common
{
	public $timestamps = false;

	protected $casts = [
		'status' => 'int',
		'sort' => 'int'
	];

	protected $fillable = [
		'name',
		'status',
		'remark',
		'sort'
	];

	static public $TYPES = [
	    'EI' => ['E','I'],
	    'SN' => ['S','N'],
	    'TF' => ['T','F'],
	    'JP' => ['J','P'],
    ];

    static public $second_potential = [
        'INTJ'  => '在实现自己的想法和达成自己的目标时有创新的想法和非凡的动力。能很快洞察到外界事物间的规律并形成长期的远景计划。一旦决定做一件事就会开始规划并直到完成为止。多疑、独立，对于自己和他人能力和表现的要 求都非常高。',
        'ENTJ'  => '坦诚、果断，有天生的领导能力。能很快看到公司/组织程序和政策中的不合理性和低效能性，发展并实施有效和全面的系统来解决问题。善于做长期的计划和目标的设定。通常见多识广，博览群书，喜欢拓广自己的知识面 并将此分享给他人。在陈述自己的想法时非常强而有力。',
        'ENTP'  => '反应快、睿智，有激励别人的能力，警觉性强、直言不讳。在解决新的、具有挑战性的问题时机智而有策略。善于找出理论上的可能性，然后再用战略的眼光分析。善于理解别人。不喜欢例行公事，很少会用相同的方法做 相同的事情，倾向于一个接一个的发展新的爱好。',
        'INTP'  => '对任何感兴趣的事物，都要探索一个合理的解释。喜欢理论和抽象的事情，喜欢理念思维多于社交活动。沉静，满足，有弹性，适应力强。在他们感兴趣的范畴内，有非凡的能力去专注而深入地解决问题。有怀疑精神，有 时喜欢批判，常常善于分析。',
        'INFP'  => '理想主义者，忠于自己的价值观及自己所重视的人。外在的生活与内在的价值观配合，有好奇心，很快看到事情的可能与否，能够加速对理念的实践。试图了解别人、协助别人发展潜能。适应力强，有弹性；如果和他们的价值观没有抵触，往往能包容他人。',
        'ENFP'  => '热情洋溢、富有想象力。认为生活是充满很多可能性。能很快地将事情和信息联系起来，然后很自信地根据自己的判断解决问题。很需要别人的肯定，又乐于欣赏和支持别人。灵活、自然不做作，有很强的即兴发挥的能力 ，言语流畅。',
        'INFJ'  => '寻求思想、关系、物质等之间的意义和联系。希望了解什么能够激励人，对人有很强的洞察力。有责任心，坚持自己的价值观。对于怎样更好的服务大众有清晰的远景。在对于目标的实现过程中有计划而且果断坚定。',
        'ENFJ'  => '温情，有同情心，反应敏捷，有责任感。非常关注别人的情绪、需要和动机。善于发现他人的潜能，并希望能帮助他们实现。能够成为个人或群体成长和进步的催化剂。忠诚，对赞美和批评都能做出积极地回应。友善好社交。在团体中能很好地帮助他人，并有鼓舞他人的领导能力。',
        'ISFJ'  => '沉静，友善，有责任感和谨慎。能坚定不移地承担责任。做事贯彻始终、不辞劳苦和准确无误。忠诚，替人着想，细心；往往记着他所重视的人的种种微小事情，关心别人的感受。努力创造一个有秩序、和谐的工作和家居环境。',
        'ESFJ'  => '有爱心、有责任心、合作。希望周边的环境温馨而和谐，并为此果断地营造这样的环境。喜欢和他人一起精确并及时地完成任务。忠诚，即使在细微地事情上也如此。能体察到他人在日常生活中的所需并竭尽全力帮助。希 望自己和自己的所为能受到他人的认可和赏识。',
        'ISTJ'  => '沉静，认真；贯彻始终、得人信赖而取得成功。讲求实际，注重事实和有责任感。能够合情合理地去决定应做的事情，而且坚定不移地把它完成，不会因外界事物而分散精神。以做事有次序、有条理为乐—不论在工作上， 家庭上或者生活上。重视传统和忠诚。',
        'ESTJ'  => '求实际，注重现实，注重事实。果断，很快作出实际可行的决定。善于将项目和人组织起来将事情完成，并尽可能以最有效率的方法达到目的。能够注意日常例行工作的细节。有一套清晰的逻辑标准，有系统性地遵循， 并希望他人也同样遵循。会以较强硬的态度去执行计划。',
        'ISFP'  => '沉静，友善，敏感和仁慈。欣赏目前和他们周遭所发生的事情。喜欢有自己的空间，做事又能把握自己的时间。忠于自己的价值观，忠于自己所重视的人。不喜欢争论和冲突，不会强迫别人接受自己的意见或价值观。',
        'ESFP'  => '外向，友善，包容。热爱生活、人类和物质上的享受。喜欢与别人共事。在工作上，讲究常识和实用性，注意现实的情况，使工作富趣味性。富灵活性、即兴性，自然不做作，易接受新朋友和适应新环境。与别人一起学习 新技能可以达到最佳的学习效果。',
        'ISTP'  => '容忍，有弹性；是冷静的观察者，但当有问题出现，便迅速行动，找出可行的解决方法。能够分析哪些东西可以使事情进行顺利，又能够从大量资料中，找出实际问题的重心。很重视事件的前因后果，能够以理性的原则把事实组织起来，重视效率。',
        'ESTP'  => '灵活、忍耐力强，实际，注重结果。觉得理论和抽象的解释非常无趣。喜欢积极地采取行动解决问题。注重当前，自然不做作，享受和他人在一起的时刻。喜欢物质享受和时尚。学习新事物最有效的方式是通过亲身感受和练习。',
    ];

    static public function deleteByMemberId($member_id)
    {
        $items = static::all()->toArray();
        foreach ($items as $item) {
            $row = MemberPersonalityGrade::where(['member_id'=>$member_id,'personality_id'=>$item['id']])->first();

            if ($row) {
                $row->where(['member_id'=>$member_id,'personality_id'=>$item['id']])->delete();
            }
        }

    }

    static public function deleteByOrderNumber($order_number)
    {
        $sql = "DELETE FROM member_personality_grades WHERE order_number = '{$order_number}'";
        DB::delete($sql);
//        $items = static::all()->toArray();
//        foreach ($items as $item) {
//            $row = MemberPersonalityGrade::where(['order_number'=>$order_number,'personality_id'=>$item['id']])->first();
//
//            if ($row) {
//                $row->where(['order_number'=>$order_number,'personality_id'=>$item['id']])->delete();
//            }
//        }

    }

    static public function getGradesByMemberId($member_id, $order_number){

        return MemberPersonalityGrade::where(['member_id' => $member_id])
            ->where(['order_number' => $order_number])
            ->orderBy('grade', 'DESC')
            ->orderBy('weight', 'DESC')
            ->limit(4)
            ->get();
    }

    static public function getSecondPotentialDetail($personality)
    {
        $arr = [];
        foreach ($personality as $item)
        {
            array_push($arr,$item->personality_name);
        }
        $str = '';
        if(in_array($arr,['I'])) {
            $str .= 'I';
        } else {
            $str .= 'E';
        }
        if(in_array($arr,['N'])) {
            $str .= 'N';
        } else {
            $str .= 'S';
        }
        if(in_array($arr,['T'])) {
            $str .= 'T';
        } else {
            $str .= 'F';
        }
        if(in_array($arr,['J'])) {
            $str .= 'J';
        } else {
            $str .= 'P';
        }

        return self::$second_potential[$str];

    }

    /**
     * 获取风格类型
     * @param $member_id
     * @param $order_number
     * @return array
     */
    static public function getType($member_id, $order_number)
    {
        $type_box = [];

        $name_box = [];

        $items = MemberPersonalityGrade::where(['member_id'=>$member_id])
            ->where(['order_number' => $order_number])
            ->orderBy('grade', 'DESC')
            ->orderBy('weight', 'DESC')
            ->get();
        $personalities = static::getAllIndexById();

        foreach ($items as $item) {
            if (in_array($personalities[$item['personality_id']]['remark'], $type_box)) {
                continue;
            }
            $type_box[] = $personalities[$item['personality_id']]['remark'];
            $name_box[$personalities[$item['personality_id']]['id']] = $personalities[$item['personality_id']]['name'];
        }

        return $name_box;
    }

}
