<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class Aula extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function camposTabla(){
        return [
            ['ID', 'at', ['id']],
            ['Grado', 'fk', ['grado' => ['grado']]],
            ['Sección', 'fk', ['seccion' => ['seccion']]],
            ['Observación', 'at', ['observacion']],
        ];
    }

    static public function camposModificables(){
        return [
            'grado_id',
            'seccion_id',
            'observacion',
        ];
    }

    static public function camposNoModificables(){
        return [
            'created_at',
            'updated_at',
        ];
    }

    public function grado(): BelongsTo
    {
        return $this->belongsTo(Grado::class);
    }

    public function seccion(): BelongsTo
    {
        return $this->belongsTo(Seccion::class);
    }
}