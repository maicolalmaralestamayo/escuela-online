<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('usuarios', function (Blueprint $table) {
            $table->id();

            $table->string('nombre_1');
            $table->string('nombre_2')->nullable();

            $table->string('apellido_1');
            $table->string('apellido_2');

            $table->string('dni', 8)->unique();
            $table->foreignId('genero_id')->constrained();
            $table->foreignId('rol_id')->constrained();

            $table->string('observacion')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('usuarios');
    }
};