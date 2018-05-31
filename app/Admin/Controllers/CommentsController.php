<?php

namespace App\Admin\Controllers;

use App\Models\Comment;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use App\User;
use App\Models\Good;

class CommentsController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('评论管理');
            $content->description('评论列表');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('评论管理');
            $content->description('编辑评论');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('评论管理');
            $content->description('添加评论');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Comment::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->goods_id('商品名称')->display(function($goodId) {
                return Good::find($goodId)->goods_name;
            });
            $grid->user_id('用户')->display(function($userId) {
                return User::find($userId)->name;
            });
            $states = [
                'on'  => ['value' => 1, 'text' => '显示', 'color' => 'primary'],
                'off' => ['value' => 2, 'text' => '不显示', 'color' => 'default'],
            ];
            $grid->status('状态')->switch($states);
            $grid->created_at('创建时间');
            $grid->updated_at('更新时间');
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Comment::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->select('goods_id','商品')->options(function(){
                $goods = Good::all();

                if($goods) {
                    $array = [0=>'请选择商品'];
                    foreach($goods as $key => $good) {
                        array_push($array,[$good->id=>$good->goods_name]);
                    }

                    return collect($array)->flatten()->toArray();
                }
            });
            $form->select('user_id','用户')->options(function(){
                $users = User::all();

                if($users) {
                    $array = [0=>'请选择用户'];
                    foreach($users as $key => $user) {
                        array_push($array,[$user->id=>$user->name]);
                    }
                    return collect($array)->flatten()->toArray();
                }
            });
            $form->switch('status', '是否显示？');
            $form->editor('content','内容')->rules('required');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
