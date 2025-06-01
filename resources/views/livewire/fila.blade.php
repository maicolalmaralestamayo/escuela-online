<tr class="align-middle">
    <td style="width: 0px">
        <input class="form-check-input" type="checkbox" value="">
    </td>

    <td>{{ $objeto->id }}</td>

    @foreach ($campos as $key => $campo)
        <td>{{ $objeto->$campo }}</td>
    @endforeach

    @if ($llavesForaneas)
        @foreach ($llavesForaneas as $key => $llave)
            <td>{{ $objeto->{$llave[0]}->{$llave[1]} }}</td>
        @endforeach
    @endif

    {{-- botonera de operaciones --}}
    @livewire('botonera-acciones-fila', ['modelo' => $modelo, 'id' => $objeto->id], key('botonera-'. $modelo. '-' . $objeto->id))
</tr>