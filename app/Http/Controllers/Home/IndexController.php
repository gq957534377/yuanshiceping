<?php

namespace App\Http\Controllers\Home;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\News;
use App\Models\SowingMap;

class IndexController extends Controller
{
    public function index($tab='')
    {
        if($this->isMoblie()){
            switch ($tab) {
                case '':
                    return view('home.mobile.index');
                case 'e':
                    return view('home.mobile.evaluation');
                case 'c':
                    return view('home.mobile.consultation');
                case 'e-c':
                    return view('home.mobile.e_and_c');
                case 'e985':
                    return view('home.mobile.e985');
            }
            return response()->json(['ret' => 'ERROR', 'message' => 'Model Not Found'], 404);
        }

        switch ($tab) {
            case '':
                $data = $this->getSowingMap(1);
                return view('home.index',['data'=>$data]);
            case 'product':
                $data = $this->getSowingMap(2);
                return view('home.product',['data'=>$data]);
            case 'about':
                $data = $this->getSowingMap(5);
                return view('home.about',['data'=>$data]);
            case 'server':
                $data = $this->getSowingMap(3);
                return view('home.server',['data'=>$data]);
            case 'extension':
                $data = $this->getSowingMap(6);
                return view('home.extension',['data'=>$data]);
            case 'culum':
                $data = $this->getSowingMap(1);
                return view('home.culum',['data'=>$data]);
            case 'news':
                $data = $this->getSowingMap(4);
                $news = News::orderBy('sort', 'desc')
                    ->orderBy('read_num', 'desc')
                    ->orderBy('updated_at', 'desc')
                    ->paginate($request->per_page??10);
                if(!empty($news)) {
                    foreach ($news as $val) {
                        $val['banner'] = url('uploads/' . $val['banner']);
                    }
                }
                return view('home.news',['data'=>$data,'news'=>$news]);
        }
    }

    public function product($type)
    {
        if($this->isMoblie()) {
            switch ($type) {
                case 'e':
                    return view('home.mobile.evaluation');
                case 'c':
                    return view('home.mobile.consultation');
                case 'e-c':
                    return view('home.mobile.e_and_c');
                case 'e985':
                    return view('home.mobile.e985');
            }
            return response()->json(['ret' => 'ERROR', 'message' => 'Model Not Found'], 404);
        }
        return view('home.product');
    }

    /**
     * 获取新闻详情
     *
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\View\View
     */
    public function getNewsDetail($id)
    {
        $data = SowingMap::where(['status'=>1])->get();
        if(!empty($data)) {
            foreach ($data as $val) {
                $val['path'] = url('uploads/' . $val['path']);
            }
        }
        $details = News::where(['id'=>$id])->first();
        if(empty($details)) {
            return back()->withErrors(['参数不正确！']);
        }
        return view('home.details',['data'=>$data,'details'=>$details]);
    }

    /**
     * 获取轮播图
     * @param int $type
     * @return bool
     */
    public function getSowingMap($type=1)
    {
        $data = SowingMap::where(['status'=>1,'type'=>$type])->get();

        if(empty($data->toArray())) {

            $data = SowingMap::where(['status'=>1,'type'=>1])->get();
        }
        if(empty($data->toArray())){

            return false;
        }
        foreach ($data as $val) {
            $val['path'] = url('uploads/' . $val['path']);
        }
        return $data;
    }
}
