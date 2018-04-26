<?php

namespace App\Http\Controllers\Project;

use App\Http\Controllers\Controller;
use App\Models\Subject;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Grid;
use App\Models\Personality;

class PersonalityController extends Controller
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
            $content->header(trans('personality.title'));
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
            $content->header(trans('personality.title'));
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
            $content->header(trans('personality.title'));
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
        return Admin::grid(Personality::class, function (Grid $grid) {
            $grid->id('ID')->sortable();
            $grid->name(trans('personality.name'));
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

        return Admin::form(Personality::class, function (Form $form) {
            $form->display('id', 'ID');
            $form->text('name', trans('personality.name'))->rules('required');
            $form->text('remark', trans('personality.remark'));

            $form->text('sort', trans('subject.sort'));
            $form->radio('status', trans('subject.status'))->values(Subject::$STATUS)->default(Subject::STATUS_ON);

            $form->disableReset();
        });
    }
}
