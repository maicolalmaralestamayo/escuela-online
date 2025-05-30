<?php

namespace Database\Seeders;

use App\Models\ActividadRespuesta;
use Illuminate\Database\Seeder;

class ActividadRespuestaSeeder extends Seeder
{
    public function run(): void
    {
        $respuestas = [
            ['id' => 1, 'persona_id' => 2, 'actividad_id' => 1, 'contenido_id' => 3],
            ['id' => 2, 'persona_id' => 2, 'actividad_id' => 1, 'contenido_id' => 4],
            ['id' => 3, 'persona_id' => 6, 'actividad_id' => 1, 'contenido_id' => 5]];

        foreach ($respuestas as $respuesta) {
            ActividadRespuesta::Create($respuesta);
        }
    }
}