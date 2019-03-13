<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class arstar_parser_wealth_horoscopes extends Model
{
    // Sql table
    protected $table = 'arstar_parser_wealth_horoscopes';

    // no timestamp
    public $timestamps = false;

    // batch insert assignment
    protected $fillable = ['gid', 'score', 'text'];
}
