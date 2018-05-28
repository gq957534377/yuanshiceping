<?php

namespace App\Http\Controllers\Project;

use App\Models\Type;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TypeController extends Controller
{

    public function types(Request $request)
    {
        $category_id = $request->query->get('q');
        $options = Type::getOptionsByCategoryId($category_id);
        return response()->json($options);
    }
}
