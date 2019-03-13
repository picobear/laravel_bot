<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class arstar_index extends Model
{
    // Sql table
    protected $table = 'arstar_index';

    // no timestamp
    public $timestamps = false;

    // batch insert assignment
    protected $fillable = ['created_at', 'created_time', 'text'];
}
