<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('actividads', function (Blueprint $table) {
            $table->id();
            
            $table->string('actividad')->unique();
            $table->string('descripcion')->unique();//enunciado
            $table->foreignId('usuario_id')->constrained();//creador de la actividad
            $table->timestamp('inicio');
            $table->timestamp('fin');
            $table->foreignId('asignatura_grado_id')->nullable()->constrained()->default(null);
           
            $table->string('observacion')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('actividads');
    }
};