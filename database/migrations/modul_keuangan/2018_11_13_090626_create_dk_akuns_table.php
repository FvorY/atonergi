<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkAkunsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_akun', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->string('ak_id', 20);
            $table->string('ak_tahun', 5);
            $table->integer('ak_comp', false, false);
            $table->string('ak_nama', 255)->default(null);
            $table->string('ak_kelompok', 100)->default(null);
            $table->enum('ak_posisi', ['D', 'K'])->default(null)->comment('D = Debet | K = Kredit');
            $table->string('ak_type', 50)->default(null)->comment('Parrent / Detail');
            $table->integer('ak_group_neraca')->unsigned()->nullable();
            $table->integer('ak_group_lr')->unsigned()->nullable();
            $table->date('ak_opening_date')->default(null);
            $table->double('ak_opening', 20, 2)->default(0.00)->comment('Saldo Awal Pembukaan');
            $table->enum('ak_isactive', ['1', '0'])->default('1')->comment('1 = aktif | 0 = non aktif');
            $table->timestamps();


            $table->primary(['ak_id', 'ak_tahun', 'ak_comp']);

            $table->foreign('ak_group_neraca')->references('ag_id')->on('dk_akun_group')
                        ->onUpdate('cascade')
                        ->onDelete('cascade');

            $table->foreign('ak_group_lr')->references('ag_id')->on('dk_akun_group')
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
        Schema::dropIfExists('dk_akuns');
    }
}
