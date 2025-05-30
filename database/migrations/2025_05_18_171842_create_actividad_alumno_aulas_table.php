<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('actividad_alumno_aulas', function (Blueprint $table) {
            $table->id();
            
            $table->foreignId('actividad_id')->constrained();
            $table->foreignId('aula_id')->constrained();
            $table->unique(['actividad_id', 'aula_id']);
            $table->foreignId('asignatura_id')->nullable()->constrained()->default(null);
           
            $table->string('observacion')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('actividad_alumno_aulas');
    }};