<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkReceivablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_receivable', function (Blueprint $table) {
            $table->engine = 'InnoDB';

            $table->increments('rc_id');
            $table->integer('rc_comp');
            $table->string('rc_sales', 20);
            $table->string('rc_nomor', 20)->unique();
            $table->string('rc_keterangan', 255);
            $table->date('rc_tanggal_trans');
            $table->string('rc_type', 20)->comment('CASH, TRANSFER, dll');
            $table->double('rc_value', 20, 2)->default(0.00);
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
        Schema::dropIfExists('dk_receivables');
    }
}
