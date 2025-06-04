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
            @livewire('botonera-acciones-tabla', [], key('botonera-acciones-tabla'))
            
            <div class="table-responsive">
                <table class="table table-bordered table-sm mx-auto">
                    @livewire('fila-cabecera', ['modelo' => $modelo, 'modeloString' => $modeloString], key('fila-cabecera-' . $modelo))

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
                                    'objeto' => $objeto,
                                ],
                                key('fila-' . $modelo . '-' . $objeto->id)
                            )
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

        {{-- paginador --}}
        <div class="card-footer">
            <div class="d-flex flex-wrap justify-content-center align-items-center">
                @livewire('paginador', ['pagina' => $pagina, 'totalPaginas' => $totalPaginas], key('paginador-' . $pagina . '-' . $objetosPagina. '-' . $totalObjetos))

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

@livewire('modal-eliminar-objeto', [], key('modal-eliminar-objeto'))
@livewire('modal-objeto-eliminado', [], key('modal-objeto-eliminado'))
@livewire('modal-eliminar-masivo', [], key('modal-eliminar-masivo'))
@livewire('modal-masivo-eliminado', [], key('modal-masivo-eliminado'))