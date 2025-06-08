<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Aula extends Model
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
                'grado' => ['grado' => 'Grado'],
                'seccion' => ['seccion' => 'Sección'],
            ],
            'timeStamps' => [
                // 'created_at' => 'Creación',
                // 'updated_at' => 'Actualización',
                // 'deleted_at' => 'Eliminación'
            ]
        ];
    }

    public function grado(): BelongsTo
    {
        return $this->belongsTo(Grado::class);
    }

    public function seccion(): BelongsTo
    {
        return $this->belongsTo(Seccion::class);
    }
}