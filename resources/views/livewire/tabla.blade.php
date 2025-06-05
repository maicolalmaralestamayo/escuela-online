<section class="content">
    <div class="card">
        {{-- título + botones de cerrar y minimizar --}}
        <div class="card-header">
            <h3 class="card-title"> {{ $titulo }}</h3>

            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Minimizar">
                    <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove" title="Cerrar">
                    <i class="fas fa-times"></i>
                </button>
            </div>
        </div>

        {{-- tabla --}}
        <div class="card-body">
            <div class="table-responsive">
                {{-- botonera de acciones de la tabla --}}
                <div class="btn-group mb-3">
                    <button type="button" class="btn btn-danger" title="Eliminar datos marcados" data-toggle="modal"
                        data-target="#modalEliminarMasivo"><i class="bi bi-trash"></i> </button>
                    <button type="button" class="btn btn-primary fas fa-circle" title="Detalles"></button>
                    <button type="button" class="btn btn-primary fas fa-circle" title="Datos relacionados"></button>
                    <button type="button" class="btn btn-primary fas fa-circle" title="Sincronizar datos"></button>

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

                <br>
                
                <table class="table table-bordered table-sm mx-auto">
                    <thead>
                        <tr>
                            {{-- input --}}
                            <td class="text-center">
                                <button class="btn btn-sm btn-warning" title="Marcar todas las filas" wire:click='invertirEstadoFilas'>
                                    <span class="icon bi bi-check2-square"></span>
                                </button>
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

                    <tbody>
                        @foreach ($objetosPaginados as $objeto)
                        @livewire( 'fila',
                        [
                        'campos' => $campos,
                        'modelo' => $modelo,
                        'modeloString' => $modeloString,
                        'objeto' => $objeto,
                        'estado' => $estadoFilas
                        ],
                        key('fila-body' . $objeto->id . $estadoFilas)
                        )
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

        {{-- paginador --}}
        <div class="card-footer">
            <div class="d-flex flex-wrap justify-content-center align-items-center">
                @livewire('paginador', ['pagina' => $pagina, 'totalPaginas' => $totalPaginas], key('paginador-' .
                $pagina . '-' . $objetosPagina. '-' . $totalObjetos))

                <div class="input-group input-group-sm m-1" style="width: auto;">
                    <div class="input-group-prepend">
                        <span class="input-group-text bg-primary">Datos por página</span>
                    </div>
                    <input type="text" class="form-control text-center" value={{ $objetosPagina }}
                        wire:keydown.enter="setObjetosPagina($event.target.value)" style="max-width: 50px;">
                </div>

                <div class="input-group input-group-sm m-1" style="width: auto;">
                    <div class="input-group-prepend">
                        <span class="input-group-text bg-primary">Total de datos</span>
                    </div>
                    <input type="text" class="form-control text-center" value={{ $totalObjetos }} readonly
                        wire:keydown.enter="setObjetosPagina($event.target.value)" style="max-width: 50px;">
                </div>
            </div>
        </div>
</section>

@livewire('modal-eliminar-objeto', key('modal-eliminar-objeto'))
@livewire('modal-objeto-eliminado', key('modal-objeto-eliminado'))
@livewire('modal-eliminar-masivo', key('modal-eliminar-masivo'))
@livewire('modal-masivo-eliminado', key('modal-masivo-eliminado'))