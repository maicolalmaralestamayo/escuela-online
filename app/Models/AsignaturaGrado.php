<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class AsignaturaGrado extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function vistaCampos(){
        return [
            'principales' => [
                'id' => 'ID',
            ],
            'secundarios' => [
                'observacion' => 'Observación'
            ],
            'foraneos' => [
                'asignatura' => [['asignatura' => 'Asignatura']],
                'grado' => [['grado' => 'Grado']],
            ],
            'dateTimes' => [
                'created_at' => 'Creación',
                'updated_at' => 'Actualización',
                'deleted_at' => 'Eliminación'
            ]
        ];
    }

    public function asignatura(): BelongsTo
    {
        return $this->belongsTo(Asignatura::class);
    }

    public function grado(): BelongsTo
    {
        return $this->belongsTo(Grado::class);
    }
}
