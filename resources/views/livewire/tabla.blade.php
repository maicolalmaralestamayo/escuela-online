<div class="card-body">
    {{-- tabla --}}
    <table class="table table-responsive table-bordered mb-3 ">
        {{-- cabecera --}}
        <thead>
            <tr>
                <th style="width: 0px">
                    <input class="form-check-input" type="checkbox" value="">
                </th>
                <th style="width: 10px">ID</th>

                @foreach ($campos as $key => $campo)
                    <th>{{ $key }}</th>
                @endforeach

                @if ($llavesForaneas)
                    @foreach ($llavesForaneas as $key => $llave)
                        <th>{{ $key }}</th>
                    @endforeach
                @endif

                <th style="width: 40px">Operaciones</th>
            </tr>
        </thead>

        {{-- filas (objetos) de la tabla --}}
        <tbody>
            
            @foreach ($objetosPaginados as $objeto)
                @livewire('fila', ['campos' => $campos, 'llavesForaneas' => $llavesForaneas, 'modelo' => $modelo, 'objeto' => $objeto], key($modelo . '-' . $objeto->id))
            @endforeach
        </tbody>
    </table>

    {{-- paginador --}}
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
                <input type="text" class="form-control text-center" value={{ $objetosPagina }} style="max-width: 50px;"
                    wire:keydown.enter="cambiarObjetosPagina($event.target.value)">
            </div>
            
            <div class="input-group input-group-sm m-1" style="width: auto;">
                <span class="input-group-text bg-primary text-white">Ir a la página</span>
                <input type="text" class="form-control text-center" value={{ $pagina }} style="max-width: 50px;"
                    wire:keydown.enter="irPagina($event.target.value)">
            </div>

            <div class="input-group input-group-sm m-1" style="width: auto;">
                <span class="input-group-text bg-primary text-white">Total de datos</span>
                <input type="text" class="form-control text-center" value={{ $totalObjetos }} style="max-width: 50px;"
                    disabled>
            </div>
        </div>
    </div>
</div>