<?php

namespace App\Admin\Controllers;

use App\Models\Good;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use Ramsey\Uuid\Uuid;

class GoodsController extends Controller
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

            $content->header('商品管理');
            $content->description('商品列表');

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

            $content->header('商品管理');
            $content->description('编辑商品');

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

            $content->header('商品管理');
            $content->description('添加商品');

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
        return Admin::grid(Good::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->goods_name('商品名称');
            $grid->goods_image('商品图品')->display(function ($goods_image) {
                return "<img src=".env('APP_URL').'/uploads/'.$goods_image.">";
            });

            $grid->describe('商品描述');
            $grid->price_level('活动')->display(function($e){
                if($e == 1){
                    return '正常价格';
                } else if($e == 2){
                    return '限时免费';
                } else {
                    return '活动价格';
                }
            });
            $grid->price('价格');
            $grid->activity_price('活动价格');
            $grid->people_num('测评人数');

            $grid->created_at('创建时间');
            $grid->updated_at('更新时间');
            $grid->filter(function ($filter) {

                // 设置created_at字段的范围查询
                $filter->between('created_at', 'Created Time')->datetime();
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Good::class, function (Form $form) {
            $form->display('id','ID');
            $form->text('goods_name', '商品名称')->placeholder('请输入商品称')->rules('required|max:10');
            $form->image('goods_image','商品图片')->uniqueName()->move('goods');
            $price_level = [
                1 => '正常价格',
                2 => '限时免费',
                3 => '活动价格',
            ];
            $form->radio('price_level','活动')->options($price_level)->default('1')->stacked();

            $form->currency('price', '正常价格')->symbol('￥');
            $form->currency('activity_price', '活动价格')->symbol('￥');
            $form->number('people_num', '测评人数');
            $form->textarea('describe', '商品描述')->placeholder('请输入商品描述。。。')->rules('required|max:100');


            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');

        });
    }
}
