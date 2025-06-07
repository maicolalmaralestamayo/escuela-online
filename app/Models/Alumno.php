<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Alumno extends Model
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
                'grado' => [
                    'grado' => 'Grado',
                ],
                'seccion' => [
                    'seccion' => 'Sección',
                ],
            ],
            'dateTimes' => [
                'created_at' => 'Creación',
                'updated_at' => 'Actualización',
                'deleted_at' => 'Eliminación'
            ]
        ];
    }

    public function usuario(): BelongsTo {
        return $this->belongsTo(Usuario::class);
    }

    public function genero(){
        return $this->usuario->genero();
    }

    public function aula(): BelongsTo {
        return $this->belongsTo(Aula::class);
    }

    public function grado(){
        return $this->aula->grado();
    }

    public function seccion(){
        return $this->aula->seccion();
    }
}