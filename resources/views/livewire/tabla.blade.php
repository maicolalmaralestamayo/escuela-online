<div class="table-responsive">
    <table class="table table-bordered table-sm mx-auto">
        <thead>
            <tr>
                {{-- input --}}
                <th style="width: 10px">
                    <input type="checkbox" id="">
                </th>

                <th style="width: 10px">ID</th>

                {{-- campos --}}
                @foreach ($campos as $key => $campo)
                    <th> {{ $key }} </th>
                @endforeach

                {{-- llaves foráneas --}}
                @foreach ($llavesForaneas as $key => $llave)
                    <th> {{ $key }} </th>
                @endforeach

                {{-- operaciones (botonera) --}}
                <th style="width: 40px">Operaciones</th>
            </tr>
        </thead>

        <tbody>
            @foreach ($objetosPaginados as $objeto)
                <tr>
                    {{-- input + id --}}
                    <td>
                        <input type="checkbox" id="">
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

                    {{-- datos de las rrelaciones extremo 1:m --}}
                    @foreach ($llavesForaneas as $key => $llave)
                        <td>
                            {{ $objeto->{$llave[0]}[$llave[1]] }}
                        </td>
                    @endforeach

                    {{-- botonera de operaciones --}}
                    <td>
                        <div class="btn-group">
                            <button type="button" class="btn btn-danger fas fa-circle" data-toggle="modal"
                                data-target="#modalEliminarObjeto" title="Eliminar datos"></button>
                            <button type="button" class="btn btn-primary fas fa-circle" title="Detalles"></button>
                            <button type="button" class="btn btn-primary fas fa-circle"
                                title="Datos relacionados"></button>
                            <button type="button" class="btn btn-primary fas fa-circle"
                                title="Sincronizar datos"></button>

                            <div class="btn-group btn-group-sm">
                                <button type="button" class="btn btn-primary dropdown-toggle dropdown-icon"
                                    data-toggle="dropdown">
                                </button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Opción 1</a>
                                    <a class="dropdown-item" href="#">Opción 2</a>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="d-flex flex-wrap justify-content-center alihn-items-center">
        <nav class="mx-2">
            <ul class="pagination pagination-sm">
                <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}" wire:click = "navegarPagina(1)"><a
                        class="page-link" href="#"> Primera </a></li>
                <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}"
                    wire:click = "navegarPagina({{ $pagina - 1 }})"><a class="page-link" href="#"> Anterior
                    </a></li>

                @for ($i = 1; $i <= $totalPaginas; $i++)
                    <li class="page-item {{ $pagina == $i ? 'active' : '' }}"
                        wire:click = "navegarPagina({{ $i }})"><a class="page-link" href="#">
                            {{ $i }} </a></li>
                @endfor

                <li class="page-item {{ $pagina == $totalPaginas ? 'disabled' : '' }}"
                    wire:click = "navegarPagina({{ $pagina + 1 }})"><a class="page-link" href="#"> Siguiente
                    </a></li>
                <li class="page-item {{ $pagina == $totalPaginas ? 'disabled' : '' }}"
                    wire:click = "navegarPagina({{ $totalPaginas }})"><a class="page-link" href="#"> Última
                    </a></li>
            </ul>
        </nav>

        <div class="input-group input-group-sm mb-3 col-sm-2">
            <div class="input-group-prepend">
                <span class="input-group-text bg-primary">Filas por página</span>
            </div>
            <input type="text" class="form-control text-center" value={{ $objetosPagina }} wire:keydown.enter="actualizarObjetosPagina($event.target.value)">
        </div>
    </div>
</div>
