<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Seccion extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function vistaCampos(){
        return [
            'principales' => [
                'id' => 'ID',
                'seccion' => 'Sección',
            ],
            'secundarios' => [
                'observacion' => 'Observación'
            ],
            'foraneos' => [
                /* 'genero' => ['Género' => 'genero'],
                'rol' => ['Rol' => 'rol'], */
            ],
            'timeStamps' => [
                // 'created_at' => 'Creación',
                // 'updated_at' => 'Actualización',
                // 'deleted_at' => 'Eliminación'
            ]
        ];
    }
}