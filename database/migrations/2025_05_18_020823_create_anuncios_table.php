<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('anuncios', function (Blueprint $table) {
            $table->id();

            $table->string('anuncio')->unique();
            $table->string('descripcion')->unique();
            $table->foreignId('usuario_id')->constrained();//creador del anuncio
            $table->timestamp('inicio')->nullable();
            $table->timestamp('fin')->nullable();
            $table->boolean('activo')->default(true);
           
            $table->string('observacion')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('anuncios');
    }
};