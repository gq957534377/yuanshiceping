<?php

namespace App\Http\Controllers\Project;

use App\Models\Category;
use App\Models\Question;
use App\Http\Controllers\Controller;
use App\Models\Subject;
use App\Models\SubQuestion;
use App\Models\Type;
use App\Zack\Facades\MyAdmin as Admin;
use App\Zack\MyForm as Form;
use Encore\Admin\Form\NestedForm;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Grid;
use Illuminate\Support\Facades\Input;

class QuestionController extends Controller
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
            $content->header(trans('question.title'));
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
            $content->header(trans('question.title'));
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
            $content->header(trans('question.title'));
            $content->description(trans('admin.edit'));
            $form = $this->form($id)->edit($id);

            $content->body($form);
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Question::class, function (Grid $grid) {
            $grid->id('ID')->sortable();

            $grid->title(trans('question.name'));

            $grid->status(trans('subject.status'))->display(function ($status_id) {
                return Subject::$STATUS[$status_id];
            });

        });
    }

    /**
     * Make a form builder.
     * @param int $id
     * @return Form
     */
    public function form($id = 0)
    {
        return Admin::form(Question::class, function (Form $form) use ($id) {

            $form->display('id', 'ID');
            $form->hidden('question_id')->default($id);
            $form->select('subject_id', trans('category.subject_id'))->options(Subject::selectOptions());
            $form->select('category_id', trans('question.category_id'))
                ->options(Category::selectOptions())
                ->loads(['type_one','type_two'], ['/admin/project/types', '/admin/project/types'])
            ;
            $form->text('title', trans('question.title'));
            $form->divide();

            if ($id >0) {
                $sub_questions = SubQuestion::fetchByQuestionId($id)->toArray();

                $form->text('sub_title_one', trans('question.one'))->default($sub_questions[0]['title']);

                $form->select('type_one', trans('question.type_one'))
                    ->options(Type::getOptionsForForm($sub_questions[0]['category_id']))
                    ->default($sub_questions[0]['type_id']);
                $form->divide();
                $form->text('sub_title_two', trans('question.two'))->default($sub_questions[1]['title']);
                $form->select('type_two', trans('question.type_two'))
                    ->options(Type::getOptionsForForm($sub_questions[1]['category_id']))
                    ->default($sub_questions[1]['type_id']);
            } else {
                $form->text('sub_title_one', trans('question.one'));
                $form->select('type_one', trans('question.type_one'))->options([]);
                $form->divide();
                $form->text('sub_title_two', trans('question.two'));
                $form->select('type_two', trans('question.type_two'))->options([]);
            }
            $form->divide();
            $form->text('sort', trans('subject.sort'));
            $form->radio('status', trans('subject.status'))->values(Subject::$STATUS)->default(Subject::STATUS_ON);
            $form->ignore([
                'question_id',
                'sub_title_one',
                'sub_title_two',
                'type_one',
                'type_two',
            ]);

            $form->disableReset();

            //保存后回调
            $form->saved(function (Form $form) {
                $data = Input::all();
                $sub_questions = [
                    [
                        'title' => $data['sub_title_one'],
                        'type_id' => $data['type_one'],
                        'sort' => 1
                    ],
                    [
                        'title' => $data['sub_title_two'],
                        'type_id' => $data['type_two'],
                        'sort' => 2
                    ],
                ];

                foreach ($sub_questions as $sub_question) {
                    if (!empty($sub_question['title'])) {
                        $where = [
                            'question_id' => $data['question_id'],
                            'sort' => $sub_question['sort']
                        ];
                        $model = SubQuestion::where($where)->first();
                        if (!$model) {
                            $model = new SubQuestion();
                        }

                        $model->title = $sub_question['title'];
                        $model->type_id = $sub_question['type_id'];
                        $model->sort = $sub_question['sort'];
                        $model->question_id = $form->model()->id;
                        $model->category_id = $form->model()->category_id;
                        $model->save();
                    }


                }



            });
        });
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if ($this->form()->destroy($id)) {
            $this->destroySubQuestions($id);//删除子问题
            return response()->json([
                'status'  => true,
                'message' => trans('admin.delete_succeeded'),
            ]);
        } else {
            return response()->json([
                'status'  => false,
                'message' => trans('admin.delete_failed'),
            ]);
        }
    }

    public function destroySubQuestions($id)
    {
        $sub_questions = SubQuestion::fetchByQuestionId($id);
        if ($sub_questions) {
            foreach ($sub_questions as $sub_question) {
                $sub_question->delete();
            }
        }
    }


}
