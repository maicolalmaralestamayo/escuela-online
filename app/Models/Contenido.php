<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Contenido extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function vistaCampos(){
        return [
            'principales' => [
                'id' => 'ID',
                'contenido' => 'Recurso',
            ],
            'foraneos' => [
                'tipoContenido' => [
                    'tipo' => 'Tipo de fichero',],
            ],
            'timeStamps' => [
                'created_at' => 'Creación',
                'updated_at' => 'Actualización',
                // 'deleted_at' => 'Eliminación'
            ]
        ];
    }

    static public function camposModificables(){
        return [
            'contenido',
            'tipo_contenido_id',
            'observacion',
            'usuario_id',
            'path',
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

    public function tipoContenido(): BelongsTo {
        return $this->belongsTo(related: TipoContenido::class);
    }
}