<?php

namespace Database\Seeders;

use App\Models\Asignatura;
use Illuminate\Database\Seeder;

class AsignaturaSeeder extends Seeder
{
    public function run(): void
    {
        $asignaturas = [
            ['id' => 1, 'asignatura' => 'Matemática', 'abreviatura' => 'MAT'],
            ['id' => 2, 'asignatura' => 'Inglés', 'abreviatura' => 'ING']];

        foreach ($asignaturas as $asignatura) {
            Asignatura::Create($asignatura);
        }
    }
}