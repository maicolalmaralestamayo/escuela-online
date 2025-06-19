<?php

namespace Database\Seeders;

use App\Models\Tutor;
use Illuminate\Database\Seeder;

class TutorSeeder extends Seeder
{
    public function run(): void
    {
        $tutors = [
            ['id' => 1, 'usuario_id' => 3, 'correo' => 'tutor00@escuela.pe', 'celular' => '+51 00 000 0000'],
            ['id' => 2, 'usuario_id' => 4, 'correo' => 'tutor01@escuela.pe', 'celular' => '+51 00 000 0001']];

        foreach ($tutors as $tutor) {
            Tutor::Create($tutor);
        }
    }
}