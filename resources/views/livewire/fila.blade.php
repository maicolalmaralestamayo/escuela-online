<tr>
    {{-- input + id --}}
    <td class="text-center">
        <input type="checkbox" id='checkbox{{$objeto->id}}' wire:change='setEstado($event.target.checked)'  @if ($estado) checked @endif>
    </td>

    {{-- campos principales --}}
    @foreach ($campos['principales'] as $key => $value)
        <td>
            {{ $objeto->$key}}
        </td>
    @endforeach

    {{-- datos de las relaciones extremo 1:m --}}
    @foreach ($campos['foraneos'] as $key => $value)
        <td>
            {{ $objeto->$key[current($value)] }}
        </td>
    @endforeach

    {{-- botonera de operaciones --}}
    <td>
        <div class="btn-group">
            <button type="button" class="btn btn-danger" title="Eliminar datos" data-toggle="modal"
                data-target="#modalEliminarObjeto" wire:click="solicitarEliminarObjeto"><i class="bi bi-trash"></i>
            </button>
            <button type="button" class="btn btn-primary bi bi-arrow-counterclockwise" title="Recargar datos" wire:click='recargarObjeto'></button>
            <button type="button" class="btn btn-primary fas fa-circle" title="Datos relacionados"></button>
            <button type="button" class="btn btn-primary fas fa-circle" title="Sincronizar datos"></button>

            <div class="btn-group btn-group-sm">
                <button type="button" class="btn btn-primary dropdown-toggle dropdown-icon" data-toggle="dropdown">
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Opción 1</a>
                    <a class="dropdown-item" href="#">Opción 2</a>
                </div>
            </div>
        </div>
    </td>
</tr>