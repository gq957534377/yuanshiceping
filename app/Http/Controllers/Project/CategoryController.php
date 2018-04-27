<?php

namespace App\Http\Controllers\Project;

use App\Models\Category;
use App\Http\Controllers\Controller;
use App\Models\Subject;
use App\Zack\Facades\MyAdmin as Admin;
use App\Zack\MyForm as Form;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Grid;

class CategoryController extends Controller
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
            $content->header(trans('category.title'));
            $content->description(trans('admin.list'));
            $content->body($this->grid()->render());
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
            $content->header(trans('category.title'));
            $content->description(trans('admin.create'));
            $content->body($this->form());
        });
    }


    /**
     * Edit interface.
     *
     * @param $id
     *
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header(trans('category.title'));
            $content->description(trans('admin.edit'));
            $content->body($this->form()->edit($id));
        });
    }


    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Category::class, function (Grid $grid) {
            $grid->id('ID')->sortable();
            $grid->subject_id(trans('subject.title'))->display(function ($subject_id){
                return Subject::getName($subject_id);
            });
            $grid->name(trans('category.title'));
            $grid->status(trans('subject.status'))->display(function ($status_id) {
                return Subject::$STATUS[$status_id];
            });

            $grid->actions(function (Grid\Displayers\Actions $actions) {


            });

            $grid->tools(function (Grid\Tools $tools) {
                $tools->batch(function (Grid\Tools\BatchActions $actions) {
                    $actions->disableDelete();
                });
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    public function form()
    {

        return Admin::form(Category::class, function (Form $form) {
            $form->display('id', 'ID');
            $form->select('subject_id', trans('category.subject_id'))->options(Subject::selectOptions());
            $form->text('name', trans('category.name'))->rules('required');
            $form->textarea('remark', trans('subject.remark'));
//            $form->radio('is_multi', trans('category.is_multi'))->values(Category::$IS_MULTI)->default(Category::MULTI);
            $form->radio('status', trans('subject.status'))->values(Subject::$STATUS)->default(Subject::STATUS_ON);

        });
    }

}
