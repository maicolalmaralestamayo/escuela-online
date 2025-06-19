<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Seccion extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function camposTabla(){
        return [
            ['ID', 'at', ['id']],
            ['Sección', 'at', ['seccion']],
            ['Observación', 'at', ['observacion']],
        ];
    }

    static public function camposModificables(){
        return [
            'seccion',
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