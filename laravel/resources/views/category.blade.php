@extends('layouts.app')

@section('content')
<div class="container">
    <h1>{{ $chuyenMuc->tenchuyenmuc }}</h1>
    <ul>
        @foreach($sanPham as $sp)
            <li><a href="{{ url('/san-pham/' . $sp->masanpham) }}">{{ $sp->tensanpham }}</a></li>
        @endforeach
    </ul>
</div>
@endsection
