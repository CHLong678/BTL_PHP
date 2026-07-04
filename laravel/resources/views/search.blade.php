@extends('layouts.app')

@section('content')
<div class="container">
    <form method="get" action="{{ url('/tim-kiem') }}">
        <input type="text" name="q" value="{{ $keyword }}">
        <button type="submit">Tìm kiếm</button>
    </form>
    <ul>
        @foreach($result as $sp)
            <li><a href="{{ url('/san-pham/' . $sp->masanpham) }}">{{ $sp->tensanpham }}</a></li>
        @endforeach
    </ul>
</div>
@endsection
