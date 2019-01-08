<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDkAkunGroupsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dk_akun_group', function (Blueprint $table) {
            
            $table->engine = 'InnoDB';

            $table->increments('ag_id');
            $table->string('ag_nomor', 20)->default(null)->unique();
            $table->string('ag_type', 50)->default(null)->comment('neraca atau laba/rugi');
            $table->string('ag_nama', 255)->default(null);
            $table->string('ag_kelompok', 255)->nullable();
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
        Schema::dropIfExists('dk_akun_groups');
    }
}
