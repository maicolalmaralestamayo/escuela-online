<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Usuario extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function columnRename(){
        return [
            'id' => 'ID',

            'nombre_1' => 'Primer Nombre',
            'nombre_2' => 'Segundo Nombre',
            'apellido_1' => 'Primer Apellido',
            'apellido_2' => 'Segundo Apellido',
            'correo' => 'Correo',
            'celular' => 'Celular',
            'dni' => 'DNI',
            'genero_id' => 'Género',
            'rol_id' => 'Rol',

            'observacion' => 'Observación',
            'created_at' => 'Creación',
            'updated_at' => 'Actualización',
            'deleted_at' => 'Eliminación'
        ];
    }

    public function genero(): BelongsTo
    {

        return $this->belongsTo(Genero::class);
    }

    public function rol(): BelongsTo
    {

        return $this->belongsTo(Rol::class);
    }
}