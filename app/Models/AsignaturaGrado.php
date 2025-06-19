<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\SoftDeletes;

class AsignaturaGrado extends Model
{
    use HasFactory;
    use SoftDeletes;

    static public function camposTabla(){
        return [
            ['ID', 'at', ['id']],
            ['Asigantura', 'fk', ['asignatura' => ['asignatura'], 'grado' => ['abreviatura']]],
            ['Observación', 'at', ['observacion']],
        ];
    }

    public function asignatura(): BelongsTo
    {
        return $this->belongsTo(Asignatura::class);
    }

    public function grado(): BelongsTo
    {
        return $this->belongsTo(Grado::class);
    }
}
