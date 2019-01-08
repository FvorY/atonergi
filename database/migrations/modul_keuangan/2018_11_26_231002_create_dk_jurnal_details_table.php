<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkJurnalDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_jurnal_detail', function (Blueprint $table) {

            $table->engine = 'InnoDB';

            $table->integer('jrdt_jurnal')->unsigned();
            $table->smallInteger('jrdt_nomor')->unsigned();
            $table->string('jrdt_akun', 20);
            $table->double('jrdt_value', 20, 2)->default(0.00);
            $table->enum('jrdt_dk', ['D', 'K'])->comment('D = debet | K = kredit');
            $table->integer('jrdt_cashflow')->unsigned();
            $table->timestamps();

            $table->primary(['jrdt_jurnal', 'jrdt_nomor']);

            $table->foreign('jrdt_akun')->references('ak_id')->on('dk_akun')
                        ->onUpdate('cascade')
                        ->onDelete('cascade');

            $table->foreign('jrdt_cashflow')->references('ca_id')->on('dk_cashflow')
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
        Schema::dropIfExists('dk_jurnal_details');
    }
}
