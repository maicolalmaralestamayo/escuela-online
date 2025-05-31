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
    <td>
        <div class="btn-group btn-group-sm">
            <button type="button" class="btn btn-danger bi bi-trash" title="Eliminar datos."></button>
            <button type="button" class="btn btn-primary bi bi-check2-all" title="Inspeccionar datos."></button>
            <button type="button" class="btn btn-primary bi bi-arrow-repeat" title="Recargar datos."></button>
            <div class="btn-group btn-group-sm  ">
                <button type="button" class="btn btn-primary bi bi-share" data-bs-toggle="dropdown"
                    title="Ver datos de tablas relacionadas.">
                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item text-secondary" href="#">Opción 1</a></li>
                    <li><a class="dropdown-item text-secondary" href="#">Opción 2</a></li>
                </ul>
            </div>

            <div class="btn-group btn-group-sm">
                <button type="button" class="btn btn-primary dropdown-toggle no-flecha bi bi-three-dots"
                    data-bs-toggle="dropdown" title="Más opciones.">
                </button>
                <style>
                    .no-flecha::after {
                        display: none;
                    }
                </style>

                <ul class="dropdown-menu">
                    <li><a class="dropdown-item text-secondary" href="#">Opción 1</a></li>
                    <li><a class="dropdown-item text-secondary" href="#">Opción 2</a></li>
                </ul>
            </div>
        </div>
    </td>
</tr>