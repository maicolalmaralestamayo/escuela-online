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
                'usuario' => [['nombre_1' => 'Nombre'],
                              ['nombre_2' => 'Segundo nombre'],
                              ['apellido_1' => 'Apellido'],
                              ['apellido_2' => 'Segundo apellido']],
                'asignatura' => [['asignatura' => 'Asignatura']],
                'grado' => [['grado' => 'Grado']],
                'calificacion' => [['calificacion' => 'Calificación']],
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

    public function AsignaturaGrado(): BelongsTo
    {
        return $this->belongsTo(AsignaturaGrado::class);
    }

    public function asignatura(){
        return $this->AsignaturaGrado->asignatura();
    }

    public function grado(){
        return $this->AsignaturaGrado->grado();
    }

    public function Calificacion(): BelongsTo
    {
        return $this->belongsTo(Calificacion::class);
    }
}
