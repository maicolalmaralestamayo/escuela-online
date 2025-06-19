<?php

namespace Database\Seeders;

use App\Models\Alumno;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class AlumnoSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 400; $i++) {
            $male = $faker->randomElement([1, 2]);
            $nombre_2 = $faker->randomElement([true, false]);
            $observacion = $faker->randomElement([true, false]);

            $alumno = [
                'nombre_1' => $male == 1 ? $faker->firstNameMale() : $faker->firstNameFemale(),
                'nombre_2' =>  $nombre_2 == true ? ($male == 1 ? $faker->firstNameMale() : $faker->firstNameFemale()) : null,
                'apellido_1' => $faker->lastName(),
                'apellido_2' => $faker->lastName(),
                'genero_id' => $male,
                'dni' => rand(10000000, 99999999),
                'observacion' => $observacion == true ? $faker->sentence() : null,
            ];

            Alumno::Create($alumno);
        }
    }
}