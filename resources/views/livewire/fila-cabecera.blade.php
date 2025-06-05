{{-- cabecera --}}
<thead>
    <tr>
        {{-- input --}}
        <td>
            <input type="checkbox" id='checkbox0' wire:change='setEstado($event.target.checked)' @if ($estado) checked @endif>{{$estado}}
        </td>

        {{-- campos --}}
        @foreach ($campos['principales'] as $key => $campo)
        <th> {{ $campo }} </th>
        @endforeach

        {{-- llaves foráneas --}}
        @foreach ($campos['foraneos'] as $key => $campo)
        <th> {{ key($campo) }} </th>
        @endforeach

        {{-- operaciones --}}
        <th style="width: 40px">Operaciones</th>
    </tr>
</thead>