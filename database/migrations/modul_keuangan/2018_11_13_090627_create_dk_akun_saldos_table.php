<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkAkunSaldosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_akun_saldo', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->string('as_akun', 20);
            $table->date('as_periode');
            $table->double('as_saldo_awal', 20, 2)->default(0.00);
            $table->double('as_mut_kas_debet', 20, 2)->default(0.00);
            $table->double('as_mut_kas_kredit', 20, 2)->default(0.00);
            $table->double('as_mut_bank_debet', 20, 2)->default(0.00);
            $table->double('as_mut_bank_kredit', 20, 2)->default(0.00);
            $table->double('as_mut_memorial_debet', 20, 2)->default(0.00);
            $table->double('as_mut_memorial_kredit', 20, 2)->default(0.00);
            $table->double('as_saldo_akhir', 20, 2)->default(0.00);
            $table->timestamps();

            $table->primary(['as_akun', 'as_periode']);

            $table->foreign('as_akun')->references('ak_id')->on('dk_akun')
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
        Schema::dropIfExists('dk_akun_saldos');
    }
}
