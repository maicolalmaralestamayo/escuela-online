<?php

namespace Database\Seeders;

use App\Models\AlumnoTutor;
use Illuminate\Database\Seeder;

class AlumnoTutorSeeder extends Seeder
{
    public function run(): void
    {
        $relacions = [
            ['id' => 1, 'alumno_id' => 1, 'tutor_id' => 1],
            ['id' => 2, 'alumno_id' => 1, 'tutor_id' => 2]];

        foreach ($relacions as $relacion) {
            AlumnoTutor::Create($relacion);
        }
    }
}