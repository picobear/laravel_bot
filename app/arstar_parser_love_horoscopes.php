<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class arstar_parser_love_horoscopes extends Model
{
    // Sql table
    protected $table = 'arstar_parser_love_horoscopes';

    // no timestamp
    public $timestamps = false;

    // batch insert assignment
    protected $fillable = ['gid', 'score', 'text'];
}
