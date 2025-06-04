<thead>
    <tr>
        {{-- input --}}
        <th style="width: 10px">
            @if ($estado == true)
                <input type="checkbox" wire:click='invertirEstado()' checked> 
            @else
                <input type="checkbox" wire:click='invertirEstado()'> 
            @endif
        
            {{$estado}}
        </th>

        {{-- campos --}}
        @foreach ($campos['principales'] as $key => $campo)
            <th> {{ $campo }} </th>
        @endforeach

        {{-- llaves foráneas --}}
        @foreach ($campos['foraneos'] as $key => $campo)
            <th> {{ key($campo) }} </th>
        @endforeach

        {{-- operaciones (botonera) --}}
        <th style="width: 40px">Operaciones</th>
    </tr>
</thead>