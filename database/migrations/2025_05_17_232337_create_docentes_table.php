<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('docentes', function (Blueprint $table) {
            $table->id();
            
            
            $table->foreignId('usuario_id')->constrained()->unique();
            $table->foreignId('contacto_id')->constrained()->unique();
            $table->foreignId('aula_id')->constrained()->unique();

            $table->string('observacion')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('docentes');
    }
};