<?php

namespace App\Admin\Controllers;

use App\Models\SowingMap;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class SowingMapController extends Controller
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

            $content->header('轮播图管理');
            $content->description('轮播图列表');

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

            $content->header('轮播图管理');
            $content->description('修改轮播图');

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

            $content->header('轮播图管理');
            $content->description('编辑轮播图');

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
        return Admin::grid(SowingMap::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->name('名称');
            $grid->path('轮播图')->display(function ($banner) {
                return "<img src=".env('APP_URL').'/uploads/'.$banner." width=100 >";
            });
            $grid->type('类型')->display(function ($type) {
               switch ($type)
               {
                   case 1:
                       return '首页';
                   case 2:
                       return '产品';
                   case 3:
                       return '案例';
                   case 4:
                       return '咨询活动';
                   case 5:
                       return '关于我们';
                   case 6:
                       return '推广';
               }
            });
            $grid->routes('跳转地址');
            $grid->status('状态')->display(function ($status) {
                return $status ? '启用' : '禁用';
            });
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
        return Admin::form(SowingMap::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('name','名称')->rules('required|max:20');
            $form->image('path','轮播图')->uniqueName()->move('sowingmap');
            $form->url('routes','跳转地址')->default(env('APP_URL'));
            $option = [
                 1 => '首页' ,
                 2 => '产品',
                 3 => '案例',
                 4 => '咨询',
                 5 => '咨询活动',
                 6 => '关于我们'
            ];
            $form->select('type','类型')->options($option);
            $form->switch('status', '状态')->default(1);
            $form->display('created_at', '创建时间');
            $form->display('updated_at', '更新时间');
        });
    }
}
