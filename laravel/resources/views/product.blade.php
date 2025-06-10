@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ $sanPham->tensanpham }}</h1>
    <p>{{ $sanPham->mota }}</p>
    <p>{{ number_format($sanPham->giaban) }} VND</p>
    <p>Chuyên mục: {{ $chuyenMuc->tenchuyenmuc ?? 'N/A' }}</p>
</div>
@endsection
