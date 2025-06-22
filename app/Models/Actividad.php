<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Actividad extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function camposTabla(){
        return [
            ['ID', 'at', ['id']],
            ['Título', 'at', ['actividad']],
            ['Descripción', 'at', ['descripcion']],
            ['Comienza', 'at', ['inicio']],
            ['Termina', 'at', ['fin']],
            ['Creador', 'fk', ['usuario' => ['nombre_1', 'apellido_1']]],
        ];
    }

    static public function camposModificables(){
        return [
            'actividad',
            'descripcion',
            'inicio',
            'fin',
            'usuario_id',
            'observacion'
        ];
    }

    static public function camposNoModificables(){
        return [
            'created_at',
            'updated_at',
        ];
    }

    public function usuario(): BelongsTo {
        return $this->belongsTo(Usuario::class);
    }

}