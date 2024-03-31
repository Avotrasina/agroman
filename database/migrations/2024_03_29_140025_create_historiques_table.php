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
        Schema::create('historiques', function (Blueprint $table) {
            $table->increments('idH');
            $table->string('type', 1);
            $table->string('Produit', 50);
            $table->string('Categorie', 50);
            $table->integer('unite');
            $table->integer('quantite');
            $table->string('conteneur', 50);
            $table->string('user', 50);
            $table->string('Lieu', 50);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('historiques');
    }
};
