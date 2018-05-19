<?php

namespace App\Http\Controllers\Api;

use App\Models\Goods;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class GoodsController extends Controller
{
    /**
     * 商品列表
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     *
     * @author jy
     */
    public function index(Request $request)
    {
        $data = Goods::orderBy('updated_at', 'desc')
            ->paginate($request->per_page??10);
        return $this->sendResponse($data, '获取的商品列表成功！');
    }

    /**
     * 商品详情
     *
     * @param Goods $goods
     * @return \Illuminate\Http\JsonResponse
     * @author jy
     */
    public function show(Goods $goods)
    {
        return $this->sendResponse($goods, '获取商品详情成功');
    }
}
