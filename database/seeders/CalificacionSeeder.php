<?php

namespace Database\Seeders;

use App\Models\Calificacion;
use Illuminate\Database\Seeder;

class CalificacionSeeder extends Seeder
{
    public function run(): void
    {
        $calificacions = [
            ['id' => 1, 'calificacion' => 'Logro esperado', 'abreviatura' => 'A'],
            ['id' => 2, 'calificacion' => 'En proceso', 'abreviatura' => 'B'],
            ['id' => 3, 'calificacion' => 'En inicio', 'abreviatura' => 'C'],
            ['id' => 4, 'calificacion' => 'Logro destacado', 'abreviatura' => 'AD']];

        foreach ($calificacions as $clificacion) {
            Calificacion::Create($clificacion);
        }
    }
}