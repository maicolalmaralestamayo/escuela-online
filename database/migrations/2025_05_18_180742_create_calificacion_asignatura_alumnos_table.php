<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('calificacion_asignatura_alumnos', function (Blueprint $table) {
            $table->id();
            
            $table->foreignId('alumno_id')->constrained();
            $table->foreignId('asignatura_grado_id')->constrained();
            $table->foreignId('calificacion_id')->constrained();
           
            $table->string('observacion')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('calificacion_asignatura_alumnos');
    }
};