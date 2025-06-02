<section class="content">
    <div class="card">
        {{-- título + botones de cerrar y minimizar --}}
        <div class="card-header">
            <h3 class="card-title"> {{ $titulo }}</h3>

            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                </button>
            </div>
        </div>

        {{-- tabla --}}
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-sm mx-auto">
                    <thead>
                        <tr>
                            {{-- input --}}
                            <th style="width: 10px">
                                <input type="checkbox">
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
                            @livewire(
                                'fila', 
                                [
                                    'id' => $objeto->id,
                                    'campos' => $campos,
                                    'llavesForaneas' => $llavesForaneas,
                                    'modelo' => $modelo,
                                    'modeloString' => $modeloString,
                                    'objeto' => $objeto
                                ],
                                key($modelo . '-' . $objeto->id))
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

        {{-- paginador --}}
        <div class="card-footer">
            <div class="d-flex flex-wrap justify-content-center align-items-center">
                <nav class="m-1">
                    <ul class="pagination pagination-sm mb-0"> <!-- Añadí mb-0 -->
                        <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}" wire:click="navegarPagina(1)">
                            <a class="page-link" href="#">Primera</a>
                        </li>
                        <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}"
                            wire:click="navegarPagina({{ $pagina - 1 }})">
                            <a class="page-link" href="#">Anterior</a>
                        </li>

                        @for ($i = 1; $i <= $totalPaginas; $i++)
                            <li class="page-item {{ $pagina == $i ? 'active' : '' }}"
                                wire:click="navegarPagina({{ $i }})">
                                <a class="page-link" href="#">{{ $i }}</a>
                            </li>
                        @endfor

                        <li class="page-item {{ $pagina == $totalPaginas ? 'disabled' : '' }}"
                            wire:click="navegarPagina({{ $pagina + 1 }})">
                            <a class="page-link" href="#">Siguiente</a>
                        </li>
                        <li class="page-item {{ $pagina == $totalPaginas ? 'disabled' : '' }}"
                            wire:click="navegarPagina({{ $totalPaginas }})">
                            <a class="page-link" href="#">Última</a>
                        </li>
                    </ul>
                </nav>

                <div class="input-group input-group-sm m-1" style="width: auto;"> <!-- Modificado -->
                    <div class="input-group-prepend">
                        <span class="input-group-text bg-primary">Filas por página</span>
                    </div>
                    <input type="text" class="form-control text-center" value="{{ $objetosPagina }}"
                        wire:keydown.enter="actualizarObjetosPagina($event.target.value)" style="max-width: 50px;">
                </div>
            </div>
        </div>
</section>
