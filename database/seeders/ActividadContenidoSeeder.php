<?php

namespace Database\Seeders;

use App\Models\ActividadContenido;
use Illuminate\Database\Seeder;

class ActividadContenidoSeeder extends Seeder
{
    public function run(): void
    {
        $contenidos = [
            ['id' => 1, 'actividad_id' => 1, 'contenido_id' => 1],
            ['id' => 2, 'actividad_id' => 1, 'contenido_id' => 2],
            ['id' => 3, 'actividad_id' => 2, 'contenido_id' => 3],
            ['id' => 4, 'actividad_id' => 2, 'contenido_id' => 4],
            ['id' => 5, 'actividad_id' => 3, 'contenido_id' => 5],];

        foreach ($contenidos as $contenido) {
            ActividadContenido::Create($contenido);
        }
    }
}