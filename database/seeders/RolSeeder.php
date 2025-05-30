<?php

namespace Database\Seeders;

use App\Models\Rol;
use Illuminate\Database\Seeder;

class RolSeeder extends Seeder
{
    public function run(): void
    {
        $rols = [
            ['id' => 1, 'rol' => 'Directivo'],
            ['id' => 2, 'rol' => 'Docente'],
            ['id' => 3, 'rol' => 'Tutor'],
            ['id' => 4, 'rol' => 'Alumno']];

        foreach ($rols as $rol) {
            Rol::Create($rol);
        }
    }
}