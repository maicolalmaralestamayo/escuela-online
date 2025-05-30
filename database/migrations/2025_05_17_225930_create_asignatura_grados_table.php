<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('asignatura_grados', function (Blueprint $table) {
            $table->id();

            $table->foreignId('asignatura_id')->constrained();
            $table->foreignId('grado_id')->constrained();
            $table->unique(['asignatura_id', 'grado_id']);
            
            $table->string('observacion')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('asignatura_grados');
    }
};