<?php

namespace Database\Seeders;

use App\Models\Alumno;
use Illuminate\Database\Seeder;

class AlumnoSeeder extends Seeder
{
    public function run(): void
    {
        $alumnos = [
            ['id' => 1, 'usuario_id' => 4, 'aula_id' => 1],
            ['id' => 2, 'usuario_id' => 5, 'aula_id' => 2]];

        foreach ($alumnos as $alumno) {
            Alumno::Create($alumno);
        }
    }
}