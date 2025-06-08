<?php

namespace Database\Seeders;

use App\Models\Contenido;
use Illuminate\Database\Seeder;

class ContenidoSeeder extends Seeder
{
    public function run(): void
    {
        $contenidos = [
            ['id' => 1, 'contenido' => 'Diagrama de inanición', 'usuario_id' => 1, 'tipo_contenido_id' => 1, 'path' => '/public/contenido.txt'],
            ['id' => 2, 'contenido' => 'Río meridional del Ecuador', 'usuario_id' => 1, 'tipo_contenido_id' => 2, 'path' => '/public/contenido.mp3'],
            ['id' => 3, 'contenido' => 'III Conferencia Mundial del Clima', 'usuario_id' => 2, 'tipo_contenido_id' => 3, 'path' => '/public/contenido.jpeg'],
            ['id' => 4, 'contenido' => 'Discurso del presidente de la asociación', 'usuario_id' => 2, 'tipo_contenido_id' => 4, 'path' => '/public/contenido.mp4'],
            ['id' => 5, 'contenido' => 'Actualización de los dispositivos', 'usuario_id' => 6, 'tipo_contenido_id' => 5, 'path' => '/public/contenido.docx']];

        foreach ($contenidos as $contenido) {
            Contenido::Create($contenido);
        }
    }
}