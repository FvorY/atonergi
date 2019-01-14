<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkGolonganAktivasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_aktiva_golongan', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->increments('ga_id');
            $table->string('ga_nomor', 20)->default(null)->unique();
            $table->string('ga_nama', 255)->default(null);
            $table->string('ga_keterangan', 255)->nullable();
            $table->tinyInteger('ga_golongan')->default(null)->comment("1 s/d 6");
            $table->tinyInteger("ga_masa_manfaat")->comment('/tahun');
            $table->double('ga_garis_lurus', 10, 2)->default(0.00)->comment('%');
            $table->double('ga_saldo_menurun', 10, 2)->default(0.00)->comment('%');
            $table->string('ga_akun_harta', 20);
            $table->string('ga_akun_penyusutan', 20);
            $table->string('ga_akun_akumulasi',  20);
            $table->timestamps();

            $table->foreign("ga_akun_harta")->references('ak_id')->on('dk_akun')
                        ->onUpdate('cascade')
                        ->onDelete('cascade');

            $table->foreign('ga_akun_akumulasi')->references('ak_id')->on('dk_akun')
                        ->onUpdate('cascade')
                        ->onDelete('cascade');

            $table->foreign('ga_akun_penyusutan')->references('ak_id')->on('dk_akun')
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
        Schema::dropIfExists('dk_golongan_aktivas');
    }
}
