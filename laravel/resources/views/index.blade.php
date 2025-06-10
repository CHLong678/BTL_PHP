@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Trang chủ</h1>
    <h2>Sản phẩm nổi bật</h2>
    <ul>
        @foreach($noibat as $sp)
            <li><a href="{{ url('/san-pham/' . $sp->masanpham) }}">{{ $sp->tensanpham }}</a></li>
        @endforeach
    </ul>
</div>
@endsection
