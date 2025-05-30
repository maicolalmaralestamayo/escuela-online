<?php

namespace Database\Seeders;

use App\Models\Genero;
use Illuminate\Database\Seeder;

class GeneroSeeder extends Seeder
{
    public function run(): void
    {
        $generos = [
            ['id' => 1, 'genero' => 'masculino', 'abreviatura' => 'M'],
            ['id' => 2, 'genero' => 'femenino', 'abreviatura' => 'F']];

        foreach ($generos as $genero) {
            Genero::Create($genero);
        }
    }
}