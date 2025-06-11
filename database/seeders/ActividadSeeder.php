<?php

namespace Database\Seeders;

use App\Models\Actividad;
use Illuminate\Database\Seeder;

class ActividadSeeder extends Seeder
{
    public function run(): void
    {
        $actividads = [
            ['id' => 1, 'usuario_id' => 1, 'actividad' => 'Actividad 1', 'descripcion' => 'Realizar resumen del tema 3', 'inicio' => '2025-05-01 10:00:00', 'fin' => '2025-05-31 10:00:00'],
            ['id' => 2, 'usuario_id' => 2, 'actividad' => 'Actividad 2', 'descripcion' => 'Realizar resumen del tema 2', 'inicio' => '2025-05-01 10:00:00', 'fin' => '2025-05-31 10:00:00'],
            ['id' => 3, 'usuario_id' => 1, 'actividad' => 'Actividad 3', 'descripcion' => 'Realizar resumen del tema 1', 'inicio' => '2025-05-01 10:00:00', 'fin' => '2025-05-31 10:00:00']];

        foreach ($actividads as $actividad) {
            Actividad::Create($actividad);
        }
    }
}