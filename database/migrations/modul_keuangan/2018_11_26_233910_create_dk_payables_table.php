<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkPayablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_payable', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->increments('py_id');
            $table->integer('py_comp');
            $table->string('py_purchase', 20);
            $table->string('py_nomor', 20)->unique();
            $table->string('py_keterangan', 255);
            $table->date('py_tanggal_trans');
            $table->string('py_type', 20)->comment('CASH, TRANSFER, dll');
            $table->double('py_value', 20, 2)->default(0.00);
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
        Schema::dropIfExists('dk_payables');
    }
}
