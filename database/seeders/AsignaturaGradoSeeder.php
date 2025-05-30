<?php

namespace Database\Seeders;

use App\Models\AsignaturaGrado;
use Illuminate\Database\Seeder;

class AsignaturaGradoSeeder extends Seeder
{
    public function run(): void
    {
        $relacions = [
            ['id' => 1, 'asignatura_id' => 1, 'grado_id' => 1],
            ['id' => 2, 'asignatura_id' => 1, 'grado_id' => 2]];

        foreach ($relacions as $relacion) {
            AsignaturaGrado::Create($relacion);
        }
    }
}