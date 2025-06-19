<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Genero extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function camposTabla(){
        return [
            ['ID', 'at', ['id']],
            ['Género', 'at', ['genero']],
            ['Abreviatura', 'at', ['abreviatura']],
            ['Observación', 'at', ['observacion']],
        ];
    }

    static public function camposModificables(){
        return [
            'genero',
            'abreviatura',
            'observacion',
        ];
    }

    static public function camposNoModificables(){
        return [
            'created_at',
            'updated_at',
        ];
    }

    public function usuarios(): HasMany
    {
        return $this->hasMany(Usuario::class);
    }
}