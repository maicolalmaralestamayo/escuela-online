<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Grado extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function columnRename(){
        return [
            'id' => 'ID',
            
            'grado' => 'Grado',
            'abreviatura' => 'Abreviatura',
            
            'observacion' => 'Observación',
            'created_at' => 'Creación',
            'updated_at' => 'Actualización',
            'deleted_at' => 'Eliminación'
        ];
    }
}