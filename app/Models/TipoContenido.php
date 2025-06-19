<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TipoContenido extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function camposTabla(){
        return [
            ['ID', 'at', ['id']],
            ['Tipo', 'at', ['tipo']],
            ['Observación', 'at', ['observacion']],
        ];
    }

    static public function camposModificables(){
        return [
            'tipo',
            'observacion',
        ];
    }

    static public function camposNoModificables(){
        return [
            'created_at',
            'updated_at',
        ];
    }
}