<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkTransaksiDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_transaksi_detail', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->integer('trdt_transaksi')->unsigned();
            $table->smallInteger('trdt_nomor');
            $table->string('trdt_akun', 20);
            $table->double('trdt_value', 20, 2);
            $table->enum('trdt_dk', ['D', 'K'])->comment('D = debet | K = Kredit');
            $table->timestamps();

            $table->primary(['trdt_transaksi', 'trdt_nomor']);

            $table->foreign('trdt_transaksi')->references('tr_id')->on('dk_transaksi')
                        ->onUpdate('cascade')
                        ->onDelete('cascade');

            $table->foreign('trdt_akun')->references('ak_id')->on('dk_akun')
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
        Schema::dropIfExists('dk_transaksi_details');
    }
}
