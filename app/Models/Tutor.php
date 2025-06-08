<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tutor extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function vistaCampos()
    {
        return [
            'principales' => [
                'id' => 'ID',
            ],
            'secundarios' => [
                'observacion' => 'Observación'
            ],
            'foraneos' => [
                'usuario' => [
                    'nombre_1' => 'Nombre',
                    'nombre_2' => 'Segundo Nombre',
                    'apellido_1' => 'Apellido',
                    'apellido_2' => 'Segundo Apellido',
                    'dni' => 'DNI',
                ],
                'genero' => [
                    'abreviatura' => 'Género',
                ],
                'contacto' => [
                    'correo' => 'Correo',
                    'celular' => 'Celular',
                ],
            ],
            'timeStamps' => [
                // 'created_at' => 'Creación',
                // 'updated_at' => 'Actualización',
                // 'deleted_at' => 'Eliminación'
            ]
        ];
    }

    public function usuario(): BelongsTo {
        return $this->belongsTo(Usuario::class);
    }

    public function contacto(): BelongsTo {
        return $this->belongsTo(Contacto::class);
    }

    public function genero(){
        return $this->usuario->genero();
    }
}