<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"> {{ $tituloAreaTrabajo }} {{$codigoAreaTrabajo }} </h1>
                </div>
            </div>
        </div>
    </div>

    @switch($codigoAreaTrabajo)
        @case('00')
            maicol
        @break
        
        @case('01')
            @livewire('TablaUsuarios')
        @break
        
        @default
            
    @endswitch
</div>