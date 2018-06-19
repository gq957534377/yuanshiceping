<?php

namespace App\Admin\Controllers;

use App\Models\Order;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;
use App\user;
use App\Models\Good;
use Ramsey\Uuid\Uuid;

class OrdersController extends Controller
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

            $content->header('订单管理');
            $content->description('订单列表');

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

            $content->header('订单管理');
            $content->description('编辑订单');

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

            $content->header('订单管理');
            $content->description('创建订单');

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
        return Admin::grid(Order::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->order_id('订单号');
            $grid->goods_id('商品名称')->display(function($goodId) {
                return Good::find($goodId)->goods_name;
            });
            $grid->user_id('用户')->display(function($userId) {
                return User::find($userId)->name;
            });
            $grid->price_level('活动')->display(function($e){
                if($e == 1){
                    return '正常价格';
                } else if($e == 2){
                    return '赠送';
                } else {
                    return '活动价格';
                }
            });
            $grid->coupon_price('优惠卷');
            $grid->price('应付价格');
            $grid->paid_price('实付价格');
            $grid->order_status('支付状态')->display(function ($status) {
                return $status == 1 ? '已支付' : '未支付';
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
        return Admin::form(Order::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->display('order_id', '订单号')->default(Uuid::uuid1()->getHex());
            $form->select('goods_id','商品')->options(function(){
                $goods = Good::get();

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

            $form->radio('price_level','活动')->options([1 => '正常价格', 2 => '限时免费', 3 => '活动价格'])->default('1')->stacked();
            $form->currency('price', '正常价格')->symbol('￥');
            $form->currency('activity_price', '活动价格')->symbol('￥');
            $form->currency('coupon_price', '优惠卷')->symbol('￥');
            $form->switch('order_status', '是否支付？');
            $form->display('created_at', '创建时间');
            $form->display('updated_at', '更新时间');
        });
    }
}
