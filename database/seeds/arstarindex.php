<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

class arstarindex extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('arstar_index')->insert([
            'gid' => 1,
            'text' => "天坪座",
        ]);
    }
}
