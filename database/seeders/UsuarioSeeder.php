<?php

namespace Database\Seeders;

use App\Models\Usuario;
use Illuminate\Database\Seeder;

class UsuarioSeeder extends Seeder
{
    public function run(): void
    {
        $usuarios = [
            ['id' => 1, 'nombre_1' => 'Roberto', 'nombre_2' => 'David', 'apellido_1' => 'González', 'apellido_2' => 'Torres', 'genero_id' => 1, 'dni' => '00000000',],
            ['id' => 2, 'nombre_1' => 'Diana', 'apellido_1' => 'Fernández', 'apellido_2' => 'López', 'genero_id' => 2, 'dni' => '00000001',],
            ['id' => 3, 'nombre_1' => 'Sergio', 'apellido_1' => 'Castañea', 'apellido_2' => 'Portuondo', 'genero_id' => 1, 'dni' => '00000002',],
            ['id' => 4, 'nombre_1' => 'Lola', 'apellido_1' => 'Fonseca', 'apellido_2' => 'Martínez', 'genero_id' => 2, 'dni' => '00000003',],
            ['id' => 5, 'nombre_1' => 'Luis', 'apellido_1' => 'Fonseca', 'apellido_2' => 'Martínez', 'genero_id' => 1, 'dni' => '00000004',],
            ['id' => 6, 'nombre_1' => 'Martín', 'apellido_1' => 'Valdivia', 'apellido_2' => 'Proenza', 'genero_id' => 1, 'dni' => '00000005',]];

        foreach ($usuarios as $usuario) {
            Usuario::Create($usuario);
        }
    }
}