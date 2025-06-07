<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class CalificacionAsignaturaAlumno extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function vistaCampos(){
        return [
            'principales' => [
                'id' => 'ID',
            ],
            'secundarios' => [
                'observacion' => 'Observación',
            ],
            'foraneos' => [
                'usuario' => ['Nombre' => 'nombre_1'],
                'usuario' => ['Segundo Nombre' => 'nombre_2'],
                'usuario' => ['Apellido' => 'apellido_1'],
                'usuario' => ['Segundo Apellido' => 'apellido_2'],
            ],
            'dateTimes' => [
                'created_at' => 'Creación',
                'updated_at' => 'Actualización',
                'deleted_at' => 'Eliminación',
            ]
        ];
    }

    public function alumno(): BelongsTo
    {
        return $this->belongsTo(Alumno::class);
    }

    public function usuario(){
        return $this->alumno->usuario();
    }
}
