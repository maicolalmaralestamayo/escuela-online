<div class="card-body">
    <table class="table table-responsive table-bordered mb-3 ">
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
                <li class="page-item d-none d-sm-block {{ $pagina == 1 ? 'disabled' : '' }}" wire:click="irPagina(1)">
                    <a class="page-link bi bi-arrow-bar-left" href="#" title="Primera página"></a>
                </li>
                <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}" wire:click="irPagina({{ $pagina-1 }})">
                    <a class="page-link" href="#" title="Anterior">
                        <span>«</span>
                    </a>
                </li>

                @for ($i = 1; $i < $ultimaPagina+1; $i++)
                    <li class="page-item"><a class="page-link {{ $i == $pagina ? 'bg-primary text-white disabled' : '' }}" href="#" wire:click="irPagina({{ $i }})">{{ $i }}</a></li>
                @endfor

                <li class="page-item {{ $pagina == $ultimaPagina ? 'disabled' : '' }}" wire:click="irPagina({{ $pagina+1 }})">
                    <a class="page-link" href="#" title="Siguiente">
                        <span>»</span>
                    </a>
                </li>
                <li class="page-item d-none d-sm-block {{ $pagina == $ultimaPagina ? 'disabled' : '' }}" wire:click="irPagina({{ $ultimaPagina }})">
                    <a class="page-link bi bi-arrow-bar-right" href="#" title="Última página"></a>
                </li>
            </ul>
        </nav>

        <div class="d-flex flex-wrap justify-content-center align-items-center gap-1">
            <div class="input-group input-group-sm m-1" style="width: auto;">
                <span class="input-group-text bg-primary text-white">Elementos por página</span>
                <input type="text" class="form-control text-center" value={{ $filas }} style="max-width: 50px;"
                    wire:keydown.enter="cambiarFilas($event.target.value)">
            </div>
            
            <div class="input-group input-group-sm m-1" style="width: auto;">
                <span class="input-group-text bg-primary text-white">Ir a la página</span>
                <input type="text" class="form-control text-center" value={{ $pagina }} style="max-width: 50px;"
                    wire:keydown.enter="irPagina($event.target.value)">
            </div>

            <div class="input-group input-group-sm m-1" style="width: auto;">
                <span class="input-group-text bg-primary text-white">Total de datos</span>
                <input type="text" class="form-control text-center" value={{ $cantidadDatos }} style="max-width: 50px;"
                    disabled>
            </div>
        </div>
    </div>
</div>