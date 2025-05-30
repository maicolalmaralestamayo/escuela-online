<?php

namespace Database\Seeders;

use App\Models\AnuncioContenido;
use Illuminate\Database\Seeder;

class AnuncioContenidoSeeder extends Seeder
{
    public function run(): void
    {
        $contenidos = [
            ['id' => 1, 'anuncio_id' => 1, 'contenido_id' => 1],
            ['id' => 2, 'anuncio_id' => 1, 'contenido_id' => 2],
            ['id' => 3, 'anuncio_id' => 2, 'contenido_id' => 3],
            ['id' => 4, 'anuncio_id' => 2, 'contenido_id' => 4],
            ['id' => 5, 'anuncio_id' => 3, 'contenido_id' => 5],];

        foreach ($contenidos as $contenido) {
            AnuncioContenido::Create($contenido);
        }
    }
}