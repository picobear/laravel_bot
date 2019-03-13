<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArstarParserWealthHoroscopes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('arstar_parser_wealth_horoscopes', function (Blueprint $table) {
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
        Schema::dropIfExists('arstar_parser_wealth_horoscopes');
    }
}
