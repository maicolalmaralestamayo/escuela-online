<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TipoContenido extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function columnRename(){
        return [
            'id' => 'ID',

            'tipo' => 'Tipo',
            
            'observacion' => 'Observación',
            'created_at' => 'Creación',
            'updated_at' => 'Actualización',
            'deleted_at' => 'Eliminación'
        ];
    }
}