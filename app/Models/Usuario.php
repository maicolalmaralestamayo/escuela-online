<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Usuario extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function vistaCampos(){
        return [
            'principales' => [
                'id' => 'ID',
                'nombre_1' => 'Nombre',
                // 'nombre_2' => 'Segundo Nombre',
                'apellido_1' => 'Apellido',
                // 'apellido_2' => 'Segundo Apellido',
                'dni' => 'DNI',
                // 'observacion' => 'Observación'
            ],
            'secundarios' => [
            ],
            'foraneos' => [
                'genero' => ['abreviatura' => 'Género'],
            ],
            'timeStamps' => [
                'created_at' => 'Creación',
                'updated_at' => 'Actualización',
                // 'deleted_at' => 'Eliminación'
            ]
        ];
    }

    public function genero(): BelongsTo
    {
        return $this->belongsTo(Genero::class);
    }
}