<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Directivo extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function camposTabla(){
        return [
            ['ID', 'at', ['id']],
            ['Nombres y apellidos', 'at', ['nombre_1', 'nombre_2', 'apellido_1', 'apellido_2']],
            ['Correo', 'at', ['correo']],
            ['Celular', 'at', ['celular']],
        ];
    }

    public function usuario(): BelongsTo {
        return $this->belongsTo(Usuario::class);
    }

    public function genero() {
        return $this->usuario->genero();
    }
}