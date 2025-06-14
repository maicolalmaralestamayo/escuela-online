<?php

namespace Database\Seeders;

use App\Models\Directivo;
use Illuminate\Database\Seeder;

class DirectivoSeeder extends Seeder
{
    public function run(): void
    {
        $directivos = [
            ['id' => 1, 'usuario_id' => 1, 'correo' => 'correo_00@dominio.subdminio', 'celular' => '+51 00 000 0000'],
            ['id' => 2, 'usuario_id' => 2, 'correo' => 'correo_01@dominio.subdminio', 'celular' => '+51 00 000 0001'],];

        foreach ($directivos as $directivo) {
            Directivo::Create($directivo);
        }
    }
}