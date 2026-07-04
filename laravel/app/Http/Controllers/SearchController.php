<?php

namespace App\Http\Controllers;

use App\Models\SanPham;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index(Request $request)
    {
        $keyword = $request->query('q');
        $result = [];
        if ($keyword) {
            $result = SanPham::where('tensanpham', 'like', "%{$keyword}%")->get();
        }
        return view('search', compact('keyword', 'result'));
    }
}
