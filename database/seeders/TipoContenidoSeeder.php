<?php

namespace Database\Seeders;

use App\Models\TipoContenido;
use Illuminate\Database\Seeder;

class TipoContenidoSeeder extends Seeder
{
    public function run(): void
    {
        $contenidos = [
            ['id' => 1, 'tipo' => 'Documento de texto', 'observacion' => 'Formatos .doc, .docx, .pdf, .txt, .odt, .rtf, entre otros.'],
            ['id' => 2, 'tipo' => 'Presentación digital', 'observacion' => 'Formatos .ppt, .pptx, .odp, .pps, .ppsx, entre otros.'],
            ['id' => 3, 'tipo' => 'Sonido', 'observacion' => 'Formatos .mp3, .wav, .ogg, .wma, .m4a, .midi, .opus, entre otros.'],
            ['id' => 4, 'tipo' => 'Imagen', 'observacion' => 'Formatos .jpeg, .jpg, .tiff, .bmp, .png, .gif, .svg, .ico, entre otros.'],
            ['id' => 5, 'tipo' => 'Video', 'observacion' => 'Formatos .avi, .mp4, .mkv, .mpeg, .webm, entre otros.'],
            ['id' => 6, 'tipo' => 'Ejecutable/instalador', 'observacion' => 'Formatos .exe, .msi, .dmg, .pkg, .apk, entre otros.'],
            ['id' => 7, 'tipo' => 'Otro', 'observacion' => 'Otros formatos.']];

        foreach ($contenidos as $contenido) {
            TipoContenido::Create($contenido);
        }
    }
}