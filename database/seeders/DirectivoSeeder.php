<?php

namespace Database\Seeders;

use App\Models\Directivo;
use Illuminate\Database\Seeder;

class DirectivoSeeder extends Seeder
{
    public function run(): void
    {
        $directivos = [
            ['id' => 1, 'usuario_id' => 1]];

        foreach ($directivos as $directivo) {
            Directivo::Create($directivo);
        }
    }
}