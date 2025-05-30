<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('actividad_calificacion_alumnos', function (Blueprint $table) {
            $table->id();

            $table->foreignId('actividad_id')->constrained();
            $table->foreignId('alumno_id')->constrained();
            $table->unique(['actividad_id', 'alumno_id']);
            $table->foreignId('calificacion_id')->constrained();
           
            $table->string('observacion')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('actividad_calificacion_alumnos');
    }
};