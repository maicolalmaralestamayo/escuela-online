<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TipoContenido extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function vistaCampos(){
        return [
            'principales' => [
                'id' => 'ID',
                'tipo' => 'Tipo de contenido',
                'observacion' => 'Observación',
            ],
            'secundarios' => [
                // 'observacion' => 'Observación'
            ],
            'foraneos' => [
                // 'genero' => ['genero' => 'Género'],
                // 'rol' => ['rol' => 'Rol'],
            ],
            'timeStamps' => [
                // 'created_at' => 'Creación',
                // 'updated_at' => 'Actualización',
                // 'deleted_at' => 'Eliminación'
            ]
        ];
    }

    static public function camposModificables(){
        return [
            'tipo',
            'observacion',
        ];
    }

    static public function camposNoModificables(){
        return [
            'created_at',
            'updated_at',
        ];
    }
}