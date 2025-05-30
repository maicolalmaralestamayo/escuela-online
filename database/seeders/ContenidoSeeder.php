<?php

namespace Database\Seeders;

use App\Models\Contenido;
use Illuminate\Database\Seeder;

class ContenidoSeeder extends Seeder
{
    public function run(): void
    {
        $contenidos = [
            ['id' => 1, 'usuario_id' => 1, 'tipo_contenido_id' => 1, 'path' => '/public/contenido.txt'],
            ['id' => 2, 'usuario_id' => 1, 'tipo_contenido_id' => 2, 'path' => '/public/contenido.mp3'],
            ['id' => 3, 'usuario_id' => 2, 'tipo_contenido_id' => 3, 'path' => '/public/contenido.jpeg'],
            ['id' => 4, 'usuario_id' => 2, 'tipo_contenido_id' => 4, 'path' => '/public/contenido.mp4'],
            ['id' => 5, 'usuario_id' => 6, 'tipo_contenido_id' => 5, 'path' => '/public/contenido.docx']];

        foreach ($contenidos as $contenido) {
            Contenido::Create($contenido);
        }
    }
}