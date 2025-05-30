<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('anuncio_directivo_grupos', function (Blueprint $table) {
            $table->id();
            
            $table->foreignId('anuncio_id')->constrained();
            $table->foreignId('directivo_id')->constrained();
            $table->unique(['anuncio_id', 'directivo_id']);
            
            $table->string('observacion')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('anuncio_directivo_grupos');
    }
};