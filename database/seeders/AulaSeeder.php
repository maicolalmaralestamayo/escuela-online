<?php

namespace Database\Seeders;

use App\Models\Aula;
use Illuminate\Database\Seeder;

class AulaSeeder extends Seeder
{
    public function run(): void
    {
        $aulas = [
            ['id' => 1, 'grado_id' => 1, 'seccion_id' => 1],
            ['id' => 2, 'grado_id' => 2, 'seccion_id' => 1]];

        foreach ($aulas as $aula) {
            Aula::Create($aula);
        }
    }
}