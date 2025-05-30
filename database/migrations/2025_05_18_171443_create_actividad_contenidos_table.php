<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('actividad_contenidos', function (Blueprint $table) {
            $table->id();
            
            $table->foreignId('actividad_id')->constrained();
            $table->foreignId('contenido_id')->constrained();
            $table->unique(['actividad_id', 'contenido_id']);
            $table->unsignedSmallInteger('orden')->default(0);

            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('actividad_contenidos');
    }
};