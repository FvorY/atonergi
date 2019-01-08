<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkPeriodeKeuangansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {   
        Schema::create('dk_periode_keuangan', function (Blueprint $table) {

            $table->engine = 'InnoDB';

            $table->increments('pk_id');
            $table->date('pk_periode')->default(null)->unique();
            $table->enum('pk_status', ['1', '0'])->default('1');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dk_periode_keuangans');
    }
}
