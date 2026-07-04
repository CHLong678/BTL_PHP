<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function index()
    {
        $slide = DB::table('sanpham')->where('loaisanpham', 0)->orderByDesc('masanpham')->get();
        $noibat = DB::table('sanpham')->where('loaisanpham', 2)->orderByDesc('masanpham')->get();
        $moi = DB::table('sanpham')->where('loaisanpham', 3)->orderByDesc('masanpham')->get();
        $danhchoban = DB::table('sanpham')->inRandomOrder()->limit(7)->get();

        return view('index', compact('slide', 'noibat', 'moi', 'danhchoban'));
    }
}
