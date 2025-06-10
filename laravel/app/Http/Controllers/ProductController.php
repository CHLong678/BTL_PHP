<?php

namespace App\Http\Controllers;

use App\Models\SanPham;
use App\Models\ChuyenMuc;

class ProductController extends Controller
{
    public function show($id)
    {
        $sanPham = SanPham::findOrFail($id);
        $chuyenMuc = ChuyenMuc::find($sanPham->machuyenmuc);

        return view('product', compact('sanPham', 'chuyenMuc'));
    }
}
