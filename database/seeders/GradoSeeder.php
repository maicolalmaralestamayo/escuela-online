<?php

namespace Database\Seeders;

use App\Models\Grado;
use Illuminate\Database\Seeder;

class GradoSeeder extends Seeder
{
    public function run(): void
    {
        $grados = [
            ['id' => 1, 'grado' => 'Primero', 'abreviatura' => '1ro.'],
            ['id' => 2, 'grado' => 'Segundo', 'abreviatura' => '2do.'],
            ['id' => 3, 'grado' => 'Tercero', 'abreviatura' => '3ro.'],
            ['id' => 4, 'grado' => 'Cuarto', 'abreviatura' => '4to.'],
            ['id' => 5, 'grado' => 'Quinto', 'abreviatura' => '5to.'],
            ['id' => 6, 'grado' => 'Sexto', 'abreviatura' => '6to.']];

        foreach ($grados as $grado) {
            Grado::Create($grado);
        }
    }
}
