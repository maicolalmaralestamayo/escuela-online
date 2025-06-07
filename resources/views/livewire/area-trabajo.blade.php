<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"> {{ $tituloAreaTrabajo }} </h1>
                </div>
            </div>
        </div>
    </div>

    @switch($codigoAreaTrabajo)
        @case('00')
            <div>
                En construcción
            </div>
        @break
        
        @case('01')
            @livewire('tabla', 
                ['titulo' => 'Tabla Usuarios',
                'modelo' => 'Usuario',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break

        @case('02')
            @livewire('tabla', 
                ['titulo' => 'Tabla Géneros',
                'modelo' => 'Genero',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break
        
        @default
            {{--  --}}
    @endswitch
</div>