<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ChuyenMuc extends Model
{
    protected $table = 'chuyenmuc';
    protected $primaryKey = 'machuyenmuc';
    public $timestamps = false;
    protected $guarded = [];
}
