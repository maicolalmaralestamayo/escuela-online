<?php

namespace Database\Seeders;

use App\Models\Seccion;
use Illuminate\Database\Seeder;

class SeccionSeeder extends Seeder
{
    public function run(): void
    {
        $seccions = [
            ['id' => 1, 'seccion' => 'A'],
            ['id' => 2, 'seccion' => 'B'],
            ['id' => 3, 'seccion' => 'C']];

        foreach ($seccions as $seccion) {
            Seccion::Create($seccion);
        }
    }
}