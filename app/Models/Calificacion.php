<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Calificacion extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function vistaCampos(){
        return [
            'principales' => [
                'id' => 'ID',
                'calificacion' => 'Calificación',
                'abreviatura' => 'Abreviatura',
            ],
            'secundarios' => [
                'descripcion' => 'Descripcion',
                'observacion' => 'Observación'
            ],
            'foraneos' => [
                // 'genero' => ['Género' => 'genero'],
                // 'rol' => ['Rol' => 'rol'],
            ],
            'dateTimes' => [
                'created_at' => 'Creación',
                'updated_at' => 'Actualización',
                'deleted_at' => 'Eliminación'
            ]
        ];
    }
}