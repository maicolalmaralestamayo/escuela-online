<table class="table table-bordered mb-2">
    <thead>
        <tr>
            <th style="width: 0px">
                <input class="form-check-input" type="checkbox" value="" id="idLabel">
            </th>
            <th style="width: 10px">ID</th>

            @foreach ($columnas as $columna)
                <th>{{ $columna }}</th>
            @endforeach

            <th style="width: 40px">Operaciones</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($datosMostrar as $dato)
            <tr class="align-middle">
                <td style="width: 0px">
                    <input class="form-check-input" type="checkbox" value="" id="idLabel">
                </td>
                <td>{{ $dato->id }}</td>

                @foreach ($columnas as $key => $columna)
                    <td>{{ $dato->$key }}</td>
                @endforeach

                {{-- botonera de operaciones --}}
                <td>
                    <div class="btn-group btn-group-sm">
                        <button type="button" class="btn btn-danger bi bi-trash" title="Eliminar datos."></button>
                        <button type="button" class="btn btn-primary bi bi-check2-all"
                            title="Inspeccionar datos."></button>
                        <button type="button" class="btn btn-primary bi bi-arrow-repeat"
                            title="Recargar datos."></button>
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
        @endforeach
    </tbody>
</table>
