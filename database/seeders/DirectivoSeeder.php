<?php

namespace Database\Seeders;

use App\Models\Directivo;
use Illuminate\Database\Seeder;

class DirectivoSeeder extends Seeder
{
    public function run(): void
    {
        $directivos = [
            ['id' => 1, 'usuario_id' => 1, 'contacto_id' => 1],
            ['id' => 2, 'usuario_id' => 2, 'contacto_id' => 2],];

        foreach ($directivos as $directivo) {
            Directivo::Create($directivo);
        }
    }
}