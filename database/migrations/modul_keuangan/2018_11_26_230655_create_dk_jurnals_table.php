<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkJurnalsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_jurnal', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->increments('jr_id');
            $table->string('jr_nomor', 20)->unique();
            $table->integer('jr_comp');
            $table->string('jr_ref', 20);
            $table->date('jr_tanggal_trans');
            $table->string('jr_keterangan', 255);
            $table->double('jr_value', 20, 2);
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
        Schema::dropIfExists('dk_jurnals');
    }
}
