<section class="content">
    <div class="container-fluid">
        <div class="card card-default">
            {{-- cabecera --}}
            <div class="card-header">
                <h3 class="card-title"> {{ $titulo }} </h3>

                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                    </button>
                </div>
            </div>

            {{-- cuerpo --}}
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <div class="table-responsive">
                            {{-- botonera de acciones de la tabla --}}
                            <div class="btn-group mb-3">
                                <button type="button" class="btn btn-outline-danger" title="Eliminar datos marcados"
                                    data-toggle="modal" data-target="#modalEliminarMasivo"><i
                                        class="bi bi-trash-fill"></i>
                                </button>

                                <button type="button" class="btn btn-outline-warning  bi bi-arrow-clockwise"
                                    title="Recargar datos de la tabla" wire:click='actualizarMasivo'>
                                </button>

                                <button type="button" class="btn btn-outline-success bi bi-plus-lg" title="Insertar"
                                    data-toggle="modal" wire:click="verInsertarObjeto"
                                    data-target="#modalInsertarObjeto">
                                </button>
                            </div>

                            <table class="table table-bordered table-sm mx-auto">
                                <thead>
                                    <tr>
                                        {{-- check --}}
                                        <td class="text-center">
                                            <button class="btn btn-sm btn-warning" title="Marcar todas las filas"
                                                wire:click='invertirEstadoFilas'>
                                                <span class="icon bi bi-check2-square"></span>
                                            </button>
                                        </td>

                                        {{-- encabezados --}}
                                        @foreach ($campos as $campo)
                                            <th>
                                                {{ $campo[0] }}
                                            </th>
                                        @endforeach

                                        {{-- encabezado Operaciones --}}
                                        <th style="width: 40px">Operaciones</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    @foreach ($objetosPaginados as $objeto)
                                        @livewire(
                                            'fila',
                                            [
                                                'campos' => $campos,
                                                'modelo' => $modelo,
                                                'modeloString' => $modeloString,
                                                'objeto' => $objeto,
                                                'estado' => $estadoFilas,
                                            ],
                                        
                                            key('fila-body' . $objeto->id . $estadoFilas . $totalObjetos)
                                        )
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            {{-- footer --}}
            <div class="card-footer">
                <div class="d-flex flex-wrap justify-content-center align-items-center">
                    @livewire('paginador', ['pagina' => $pagina, 'totalPaginas' => $totalPaginas], key($pagina . $objetosPagina . $totalObjetos))

                    <div class="input-group input-group-sm m-1" style="width: auto;">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-primary">Datos por página</span>
                        </div>
                        <input type="text" class="form-control text-center" value={{ $objetosPagina }}
                            wire:keydown.enter="setObjetosPagina($event.target.value)" style="max-width: 50px;"
                            name='datos-por-pagina'>
                    </div>

                    <div class="input-group input-group-sm m-1" style="width: auto;">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-primary">Total de datos</span>
                        </div>
                        <input type="text" class="form-control text-center" value={{ $totalObjetos }} readonly
                            wire:keydown.enter="setObjetosPagina($event.target.value)" style="max-width: 50px;"
                            name='total-de-datos'>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @livewire('modal-detalles-objeto', ['modelo' => $modelo], key('modal-detalles-objeto' . $modelo))
    @livewire('modal-objeto-actualizado', key('modal-objeto-actualizado'))

    @livewire('modal-insertar-objeto', ['modelo' => $modelo], key('modal-insertar-objeto' . $modelo))
    @livewire('modal-objeto-insertado', key('modal-objeto-insertado'))
    
    @livewire('modal-eliminar-objeto', ['modelo' => $modelo], key('modal-eliminar-objeto' . $modelo))
    @livewire('modal-objeto-eliminado', key('modal-objeto-eliminado'))

    @livewire('modal-eliminar-masivo', key('modal-eliminar-masivo'))
    @livewire('modal-masivo-eliminado', key('modal-masivo-eliminado'))
</section>