<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('alumno_tutors', function (Blueprint $table) {
            $table->id();
            
            $table->foreignId('alumno_id')->constrained();
            $table->foreignId('tutor_id')->constrained();
            $table->unique(['alumno_id', 'tutor_id']);
            
            $table->string('observacion')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('alumno_tutors');
    }
};