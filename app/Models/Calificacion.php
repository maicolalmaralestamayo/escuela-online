<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Calificacion extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function camposTabla(){
        return [
            ['ID', 'at', ['id']],
            ['Calificación', 'at', ['calificacion']],
            ['Abreviatura', 'at', ['abreviatura']],
            ['Observación', 'at', ['observacion']],
        ];
    }

    static public function camposModificables(){
        return [
            'calificacion',
            'abreviatura',
            'descripcion',
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