<?php

namespace Database\Seeders;

use App\Models\Docente;
use Illuminate\Database\Seeder;

class DocenteSeeder extends Seeder
{
    public function run(): void
    {
        $docentes = [
            ['id' => 1, 'usuario_id' => 2, 'contacto_id' => 1, 'aula_id' => 1],
            ['id' => 2, 'usuario_id' => 6, 'contacto_id' => 2, 'aula_id' => 2]];

        foreach ($docentes as $docente) {
            Docente::Create($docente);
        }
    }
}