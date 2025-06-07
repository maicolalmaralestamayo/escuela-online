<?php

namespace Database\Seeders;

use App\Models\TipoContenido;
use Illuminate\Database\Seeder;

class TipoContenidoSeeder extends Seeder
{
    public function run(): void
    {
        $contenidos = [
            ['id' => 1, 'tipo' => 'Documento', 'observacion' => 'Documentos en formato .doc, .docx, .pdf y otros.'],
            ['id' => 2, 'tipo' => 'Presetación', 'observacion' => 'Documentos en formato .ppt, .pptx y otros.'],
            ['id' => 3, 'tipo' => 'Audio', 'observacion' => 'Archivos de audio en formato .mp3. y otros'],
            ['id' => 4, 'tipo' => 'Imagen', 'observacion' => 'Archivos de imagen en formato .jpg, .jpeg, .png y otros.'],
            ['id' => 5, 'tipo' => 'Video', 'observacion' => 'Archivos de imagen en formato .mp4 y otros.'],
            ['id' => 6, 'tipo' => 'Otro tipo de fichero', 'observacion' => 'Otro tipo de ficheros.']];

        foreach ($contenidos as $contenido) {
            TipoContenido::Create($contenido);
        }
    }
}