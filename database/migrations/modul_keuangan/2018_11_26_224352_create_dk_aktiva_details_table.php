<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkAktivaDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_aktiva_detail', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->integer('atdt_aktiva')->unsigned();
            $table->string('atdt_tahun', 5);
            $table->tinyInteger('atdt_jumlah_bulan');
            $table->double('atdt_penyusutan', 20, 2);
            $table->timestamps();

            $table->primary(['atdt_aktiva', 'atdt_tahun']);

            $table->foreign('atdt_aktiva')->references('at_id')->on('dk_aktiva')
                        ->onUpdate('cascade')
                        ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('dk_aktiva_details');
    }
}
