<?php

namespace Database\Seeders;

use App\Models\Docente;
use Illuminate\Database\Seeder;

class DocenteSeeder extends Seeder
{
    public function run(): void
    {
        $docentes = [
            ['id' => 1, 'usuario_id' => 2, 'correo' => 'docente00@escuela.pe', 'celular' => '+51 00 000 0000'],
            ['id' => 2, 'usuario_id' => 6, 'correo' => 'docente01@escuela.pe', 'celular' => '+51 00 000 0001']];

        foreach ($docentes as $docente) {
            Docente::Create($docente);
        }
    }
}