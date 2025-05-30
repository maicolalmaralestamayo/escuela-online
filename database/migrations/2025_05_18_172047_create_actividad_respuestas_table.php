<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('actividad_respuestas', function (Blueprint $table) {
            $table->id();
            
            $table->foreignId('alumno_id')->constrained();//quien subió la respuesta
            $table->foreignId('actividad_id')->constrained();
            $table->foreignId('contenido_id')->constrained();
            $table->unique(['alumno_id', 'actividad_id', 'contenido_id']);

            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('actividad_respuestas');
    }
};