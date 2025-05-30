<?php

namespace Database\Seeders;

use App\Models\TipoContenido;
use Illuminate\Database\Seeder;

class TipoContenidoSeeder extends Seeder
{
    public function run(): void
    {
        $contenidos = [
            ['id' => 1, 'tipo' => 'texto'],
            ['id' => 2, 'tipo' => 'audio'],
            ['id' => 3, 'tipo' => 'imagen'],
            ['id' => 4, 'tipo' => 'video'],
            ['id' => 5, 'tipo' => 'documento']];

        foreach ($contenidos as $contenido) {
            TipoContenido::Create($contenido);
        }
    }
}