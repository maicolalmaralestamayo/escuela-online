<?php

namespace Database\Seeders;

use App\Models\Anuncio;
use Illuminate\Database\Seeder;

class AnuncioSeeder extends Seeder
{
    public function run(): void
    {
        $anuncios = [
            ['id' => 1, 'anuncio' => 'Anuncio 1', 'descripcion' => 'descripcion 1', 'usuario_id' => 1, 'inicio' => '2025-05-01 10:00:00', 'fin' => '2025-05-31 10:00:00'],
            ['id' => 2, 'anuncio' => 'Anuncio 2', 'descripcion' => 'descripcion 2', 'usuario_id' => 2, 'inicio' => '2025-05-01 10:00:00', 'fin' => '2025-05-31 10:00:00'],
            ['id' => 3, 'anuncio' => 'Anuncio 3', 'descripcion' => 'descripcion 3', 'usuario_id' => 6, 'inicio' => '2025-05-01 10:00:00', 'fin' => '2025-05-31 10:00:00']];

        foreach ($anuncios as $anuncio) {
            Anuncio::Create($anuncio);
        }
    }
}