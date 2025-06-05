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
                <div class="btn-group mb-3">
                    <button type="button" class="btn btn-danger" title="Eliminar datos marcados" data-toggle="modal"
                        data-target="#modalEliminarMasivo"><i class="fas fa-trash"></i> </button>
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

                <table class="table table-bordered table-sm mx-auto">
                    {{-- cabecera --}}
                    <thead>
                        <tr>
                            {{-- input --}}
                            <td>
                                <input type="checkbox" id='checkbox0'
                                    wire:change='setEstado($event.target.checked)'>{{$estado}}
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
                        'estado' => $estado
                        ],
                        key('fila' . $objeto->id.$estado)
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
                        <span class="input-group-text bg-primary">Filas por página</span>
                    </div>
                    <input type="text" class="form-control text-center" value="{{ $objetosPagina }}"
                        wire:keydown.enter="setObjetosPagina($event.target.value)" style="max-width: 50px;">
                </div>
            </div>
        </div>
</section>

@livewire('modal-eliminar-objeto', key('modal-eliminar-objeto'))
@livewire('modal-objeto-eliminado', key('modal-objeto-eliminado'))