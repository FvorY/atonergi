<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkAktivasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_aktiva', function (Blueprint $table) {

            $table->engine = 'InnoDB';
            
            $table->increments('at_id');
            $table->integer('at_golongan')->unsigned();
            $table->integer('at_comp');
            $table->string('at_nomor', 20)->unique();
            $table->string('at_nama', 255);
            $table->char('at_metode', 2)->comment('GL = garis lurus || SM = saldo menurun');
            $table->double('at_harga_beli', 20, 2);
            $table->date('at_tanggal_beli');
            $table->double('at_nilai_sisa', 20, 2);
            $table->date('at_tanggal_habis');
            $table->enum('at_status', ['1', '0'])->default('1')->comment('1 = aktif || 0 = non aktif');
            $table->timestamps();

            $table->foreign('at_golongan')->references('ga_id')->on('dk_aktiva_golongan')
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
        Schema::dropIfExists('dk_aktivas');
    }
}
