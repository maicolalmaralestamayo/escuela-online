<?php

namespace Database\Seeders;

use App\Models\Calificacion;
use Illuminate\Database\Seeder;

class CalificacionSeeder extends Seeder
{
    public function run(): void
    {
        $calificacions = [
            ['id' => 1, 'calificacion' => 'A', 'abreviatura' => 'A'],
            ['id' => 2, 'calificacion' => 'B', 'abreviatura' => 'B'],
            ['id' => 3, 'calificacion' => 'C', 'abreviatura' => 'C'],
            ['id' => 4, 'calificacion' => 'AD', 'abreviatura' => 'AD']];

        foreach ($calificacions as $clificacion) {
            Calificacion::Create($clificacion);
        }
    }
}