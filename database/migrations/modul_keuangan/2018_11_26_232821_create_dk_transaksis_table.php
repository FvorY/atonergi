<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkTransaksisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_transaksi', function (Blueprint $table) {

            $table->engine = 'InnoDB';

            $table->increments('tr_id');
            $table->integer('tr_comp');
            $table->string('tr_nomor', 20)->unique();
            $table->date('tr_tanggal');
            $table->string('tr_nama', 255);
            $table->string('tr_keterangan', 255)->nullable();
            $table->double('tr_value', 20, 2)->default(0.00);
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
        Schema::dropIfExists('dk_transaksis');
    }
}
