<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Database\Eloquent\SoftDeletes;

class Usuario extends Model
{
    use HasFactory;
    use SoftDeletes; 

    static public function camposTabla(){
        return [
            ['ID', 'at', ['id']],
            ['Usuario', 'at', ['nombre_1', 'nombre_2', 'apellido_1', 'apellido_2']],
            ['DNI', 'at', ['dni']],
            ['Género', 'fk', ['genero' => ['genero']]],
            ['Creado', 'at', ['created_at']],
            ['Actualizado', 'at', ['updated_at']],
        ];
    }

    static public function camposModificables(){
        return [
            'nombre_1',
            'nombre_2',
            'apellido_1',
            'apellido_2',
            'dni',
            'genero_id',
            'observacion',
        ];
    }

    static public function camposNoModificables(){
        return [
            'created_at',
            'updated_at',
        ];
    }

    public function genero(): BelongsTo{
        return $this->belongsTo(Genero::class);
    }
}