<?php

namespace App\Http\Controllers;

use App\Models\ChuyenMuc;
use App\Models\SanPham;

class CategoryController extends Controller
{
    public function show($id)
    {
        $chuyenMuc = ChuyenMuc::findOrFail($id);
        $sanPham = SanPham::where('machuyenmuc', $id)->get();

        return view('category', compact('chuyenMuc', 'sanPham'));
    }
}
