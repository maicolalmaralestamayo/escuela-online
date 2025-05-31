<div class="card-body table-responsive">
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

                @if ($llavesForaneas)
                @foreach ($llavesForaneas as $key => $llave)
                <th>{{ $llave[0] }}</th>
                @endforeach
                @endif

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

                @if ($llavesForaneas)
                @foreach ($llavesForaneas as $key => $llave)
                <td>{{ $dato->$key[$llave[1]] }}</td>
                @endforeach
                @endif

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

    <div class="d-flex flex-wrap justify-content-center align-items-center gap-2">
        <nav class="">
            <ul class="pagination pagination-sm mb-0">
                <li class="page-item d-none d-sm-block">
                    <a class="page-link bi bi-arrow-bar-left" href="#" title="Primera página"></a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Anterior" title="Anterior">
                        <span aria-hidden="true">«</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item disabled"><a class="page-link" href="#">...</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">7</a></li>
                <li class="page-item active"><a class="page-link" href="#">8</a></li>
                <li class="page-item"><a class="page-link" href="#">9</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Siguiente" title="Siguiente">
                        <span aria-hidden="true">»</span>
                    </a>
                </li>
                <li class="page-item d-none d-sm-block">
                    <a class="page-link bi bi-arrow-bar-right" href="#" title="Última página"></a>
                </li>
            </ul>
        </nav>

        <div class="d-flex flex-wrap justify-content-center align-items-center gap-1">
            <div class="input-group input-group-sm m-1" style="width: 90px;">
                <span class="input-group-text bg-primary text-white">Ir a</span>
                <input type="text" class="form-control text-center" value={{ $pagina }} style="min-width: 20px;"
                    wire:keydown.enter="irPagina($event.target.value)">
            </div>

            <div class="input-group input-group-sm m-1" style="width: 140px;">
                <span class="input-group-text bg-primary text-white">Por página</span>
                <input type="text" class="form-control text-center" value={{ $filas }} style="min-width: 20px;"
                    wire:keydown.enter="cambiarFilas($event.target.value)">
            </div>

            <div class="input-group input-group-sm m-1" style="width: 100px;">
                <span class="input-group-text bg-primary text-white">Total</span>
                <input type="text" class="form-control text-center" value={{ $cantidadDatos }} style="min-width: 20px;"
                    readonly>
            </div>
        </div>
    </div>
</div>