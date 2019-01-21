<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkCashflowsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_cashflow', function (Blueprint $table) {
            
            $table->engine = "InnoDB";

            $table->increments('ca_id');
            $table->string('ca_name', 255);
            $table->char('ca_cashflow', 3)->comment('OCF | ICF | FCF');
            $table->char('ca_status', 10);
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
        Schema::dropIfExists('dk_transaksi_cashflows');
    }
}
