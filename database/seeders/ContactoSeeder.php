<?php

namespace Database\Seeders;

use App\Models\Contacto;
use Illuminate\Database\Seeder;

class ContactoSeeder extends Seeder
{

    public function run(): void
    {
        $contactos = [
            ['id' => 1, 'correo' => 'roberto@gmail.com', 'celular' => '+51 000000000'],
            ['id' => 2, 'correo' => 'diana@hotmail.com', 'celular' => '+51 000000001']];

        foreach ($contactos as $contacto) {
            Contacto::Create($contacto);
        }
    }
}