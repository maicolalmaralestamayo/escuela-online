<?php

namespace Database\Seeders;

use App\Models\Genero;
use Illuminate\Database\Seeder;

class GeneroSeeder extends Seeder
{
    public function run(): void
    {
        $generos = [
            ['id' => 1, 'genero' => 'Masculino', 'abreviatura' => 'M'],
            ['id' => 2, 'genero' => 'Femenino', 'abreviatura' => 'F']];

        foreach ($generos as $genero) {
            Genero::Create($genero);
        }
    }
}