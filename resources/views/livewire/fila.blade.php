<tr>
    {{-- input + id --}}
    <td class="text-center">
        <input type="checkbox" id='checkbox{{$objeto->id}}' wire:change='setEstado($event.target.checked)' @if ($estado)
            checked @endif>
    </td>

    {{-- campos principales --}}
    @foreach ($campos['principales'] as $key => $value)
    <td>
        {{ $objeto->$key}}
    </td>
    @endforeach

    {{-- datos de las relaciones extremo 1:m --}}
    @foreach ($campos['foraneos'] as $relacion => $columnas)
        @foreach ($columnas as $campoBd => $campoVista)
            <td>
                {{ $objeto->$relacion[$campoBd] }}
            </td>
        @endforeach
    @endforeach

    {{-- campos timeStamps --}}
    @foreach ($campos['timeStamps'] as $campoBd => $campoVista)
        <td>
            {{ $objeto->$campoBd }}
        </td>
    @endforeach

    {{-- botonera de operaciones --}}
    <td>
        <div class="btn-group">
            <button type="button" class="btn btn-danger" title="Eliminar" data-toggle="modal"
                data-target="#modalEliminarObjeto" wire:click="solicitarEliminarObjeto" data-toggle="modal" data-target="#modalEliminarObjeto"><i class="bi bi-trash"></i>
            </button>
            
            <button type="button" class="btn btn-warning bi bi-database-down" title="Recargar" wire:click="actualizar"></button>

            <button type="button" class="btn btn-primary bi bi-info-circle" title="Detalles" data-toggle="modal" data-target="#modalDetallesObjeto"></button>
            
            <!--<div class="btn-group btn-group-sm">
                <button type="button" class="btn btn-dark dropdown-toggle dropdown-icon" data-toggle="dropdown">
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="#">Opción 1</a>
                    <a class="dropdown-item" href="#">Opción 2</a>
                </div>
            </div>-->
        </div>
    </td>
</tr>