<?php

namespace Database\Seeders;

use App\Models\Contacto;
use Illuminate\Database\Seeder;

class ContactoSeeder extends Seeder
{

    public function run(): void
    {
        $contactos = [
            ['id' => 1, 'correo' => 'roberto@gmail.com', 'celular' => '+51 000000000', 'usuario_id' => 1],
            ['id' => 2, 'correo' => 'diana@hotmail.com', 'celular' => '+51 000000001', 'usuario_id' => 2]];

        foreach ($contactos as $contacto) {
            Contacto::Create($contacto);
        }
    }
}