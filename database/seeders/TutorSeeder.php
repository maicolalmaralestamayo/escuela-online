<?php

namespace Database\Seeders;

use App\Models\Tutor;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class TutorSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create();

        for ($i = 0; $i < 400; $i++) {
            $male = $faker->randomElement([1, 2]);
            $nombre_2 = $faker->randomElement([true, false]);
            $observacion = $faker->randomElement([true, false]);
            $nombre_1 = $male == 1 ? $faker->firstNameMale() : $faker->firstNameFemale();

            $alumno = [
                'nombre_1' => $nombre_1,
                'nombre_2' =>  $nombre_2 == true ? ($male == 1 ? $faker->firstNameMale() : $faker->firstNameFemale()) : null,
                'apellido_1' => $faker->lastName(),
                'apellido_2' => $faker->lastName(),
                'genero_id' => $male,
                'dni' => rand(10000000, 99999999),
                'observacion' => $observacion == true ? $faker->sentence() : null,
                'correo' => strtolower($nombre_1 . '_') . rand(10, 99) . '@' . $faker->randomElement(['gmail.com', 'hotmail.com', 'outlook.com', 'yahoo.com', 'icloud.com', 'protonmail.com',  $faker->domainWord . '.pe']),
                'celular' => '+51 ' . rand(10, 99) . ' ' . rand(100, 999) . ' ' . rand(1000, 9999),
            ];

            Tutor::Create($alumno);
        }
    }
}