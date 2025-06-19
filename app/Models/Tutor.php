<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Tutor extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function camposTabla(){
        return [
            ['ID', 'at', ['id']],
            ['Nombres y apellidos', 'at', ['nombre_1', 'nombre_2', 'apellido_1', 'apellido_2']],
            ['Correo', 'at', ['correo']],
            ['Teléfono', 'at', ['celular']],
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
            'correo',
            'celular',
            'observacion',
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

    public function contacto(): BelongsTo {
        return $this->belongsTo(Contacto::class);
    }

    public function genero(){
        return $this->usuario->genero();
    }
}