<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Rol extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function vistaCampos(){
        return [
            'principales' => [
                'id' => 'ID',
                'nombre_1' => 'Nombre',
                'nombre_2' => 'Segundo Nombre',
                'apellido_1' => 'Apellido',
                'apellido_2' => 'Segundo Apellido',
                'dni' => 'DNI',
            ],
            'secundarios' => [
                'observacion' => 'Observación'
            ],
            'foraneos' => [
                'genero' => ['Género' => 'genero'],
                'rol' => ['Rol' => 'rol'],
            ],
            'dateTimes' => [
                'created_at' => 'Creación',
                'updated_at' => 'Actualización',
                'deleted_at' => 'Eliminación'
            ]
        ];
    }
}