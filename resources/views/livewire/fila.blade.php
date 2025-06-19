<tr>
    {{-- input + id --}}
    <td class="text-center">
        <input type="checkbox" id='checkbox{{$objeto->id}}' wire:change='setEstado($event.target.checked)' @if ($estado)
            checked @endif>
    </td>

    {{-- valores --}}
    @foreach ($campos as $campo)
    <td>
        @if ($campo[1] == 'at')
            @foreach ($campo[2] as $encabezado)
                {{$objeto->$encabezado}}
            @endforeach
        @elseif ($campo[1] == 'fk')
            @foreach ($campo[2] as $fk => $encabezados)
                @foreach ($encabezados as $encabezado)
                    {{$objeto->$fk->$encabezado}}
                @endforeach    
            @endforeach
        @endif
    </td>
    @endforeach

    {{-- botonera de operaciones --}}
    <td>
        <div class="btn-group">
            <button type="button" class="btn btn-outline-danger" title="Eliminar" data-toggle="modal"
                wire:click="solicitarEliminarObjeto" data-toggle="modal" data-target="#modalEliminarObjeto"><i class="bi bi-trash-fill"></i>
            </button>
            
            <button type="button" class="btn btn-outline-warning bi bi-arrow-clockwise" title="Recargar" wire:click="actualizar"></button>

            <button type="button" class="btn btn-outline-primary bi bi-chevron-bar-expand" title="Detalles" wire:click='verDetallesObjeto' data-toggle="modal" data-target="#modalDetallesObjeto"></button>
        </div>
    </td>
</tr>