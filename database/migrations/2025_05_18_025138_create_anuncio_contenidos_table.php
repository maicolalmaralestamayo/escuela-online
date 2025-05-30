<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('anuncio_contenidos', function (Blueprint $table) {
            $table->id();

            $table->foreignId('anuncio_id')->constrained();
            $table->foreignId('contenido_id')->constrained();
            $table->unique(['anuncio_id', 'contenido_id']);
            $table->unsignedSmallInteger('orden')->default(0);

            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('anuncio_contenidos');
    }
};