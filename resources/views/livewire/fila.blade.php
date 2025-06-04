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
        @livewire('botonera-acciones-fila', ['modelo' => $modelo, 'id' => $id], key('botonera-' . $id))
    </td>
</tr>
