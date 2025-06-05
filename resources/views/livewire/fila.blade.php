<tr>
    {{-- input + id --}}
    <td>
        @if ($estado == true)
        <input type="checkbox" wire:click='invertirEstado()' checked>
        @else
        <input type="checkbox" wire:click='invertirEstado()'>
        @endif

        {{$estado}}
    </td>
    <td>
        {{ $objeto->id }}
    </td>

    {{-- demás datos --}}
    @foreach ($campos as $campo)
    <td>
        {{ $objeto->$campo }}
    </td>
    @endforeach

    {{-- datos de las relaciones extremo 1:m --}}
    @foreach ($llavesForaneas as $key => $llave)
    <td>
        {{ $objeto->{$llave[0]}[$llave[1]] }}
    </td>
    @endforeach

    {{-- botonera de operaciones --}}
    <td>
        <div class="btn-group">
            <button type="button" class="btn btn-danger" title="Eliminar datos" data-toggle="modal"
                data-target="#modalEliminarObjeto" wire:click="solicitarEliminarObjeto"><i class="bi bi-trash"></i> </button>
            <button type="button" class="btn btn-primary fas fa-circle" title="Detalles"></button>
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