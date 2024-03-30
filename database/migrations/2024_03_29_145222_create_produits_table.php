<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('produits', function (Blueprint $table) {
            $table->increments('idP');
            $table->string('libelle', 50);
            $table->integer('unite');
            $table->string('photo');
            $table->integer('unite');
            $table->integer('vie');
            $table->integer('idCat');
            $table->integer('idCont');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('produits');
    }
};
