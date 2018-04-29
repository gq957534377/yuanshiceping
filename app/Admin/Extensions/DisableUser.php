<?php
/**
 * Created by PhpStorm.
 * User: 郭庆
 * Date: 2018/4/29
 * Time: 下午7:31
 */

namespace App\Admin\Extensions;


use Encore\Admin\Admin;

class DisableUser
{
    protected $id;

    public function __construct($id)
    {
        $this->id = $id;
    }

    protected function script()
    {
        return <<<SCRIPT

$('.disable').on('click', function () {

    // Your code.
    console.log($(this).data('id'));

});

SCRIPT;
    }

    protected function render()
    {
        Admin::script($this->script());

        return "<a class='fa fa-ban disable' data-id='{$this->id}'></a>";
    }

    public function __toString()
    {
        return $this->render();
    }
}