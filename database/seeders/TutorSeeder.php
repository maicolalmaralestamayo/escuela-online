<?php

namespace Database\Seeders;

use App\Models\Tutor;
use Illuminate\Database\Seeder;

class TutorSeeder extends Seeder
{
    public function run(): void
    {
        $tutors = [
            ['id' => 1, 'usuario_id' => 3],
            ['id' => 2, 'usuario_id' => 4]];

        foreach ($tutors as $tutor) {
            Tutor::Create($tutor);
        }
    }
}