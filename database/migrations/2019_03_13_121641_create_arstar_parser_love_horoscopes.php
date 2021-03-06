<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArstarParserLoveHoroscopes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('arstar_parser_love_horoscopes', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('gid');
            $table->string('score');
            $table->string('text');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('arstar_parser_love_horoscopes');
    }
}
