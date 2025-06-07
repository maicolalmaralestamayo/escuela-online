<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Aula extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function vistaCampos(){
        return [
            'principales' => [
                'id' => 'ID',
                'grado_id' => 'Grado',
                'seccion_id' => 'Sección',
            ],
            'secundarios' => [
                'observacion' => 'Observación'
            ],
            'foraneos' => [
                /* 'genero' => ['Género' => 'genero'],
                'rol' => ['Rol' => 'rol'], */
            ],
            'dateTimes' => [
                'created_at' => 'Creación',
                'updated_at' => 'Actualización',
                'deleted_at' => 'Eliminación'
            ]
        ];
    }
}