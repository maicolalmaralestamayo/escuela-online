 <div class="content-wrapper">
     <!-- título del tablero -->
     <div class="content-header">
         <div class="container-fluid">
             <div class="row mb-2">
                 <div class="col-sm-6">
                     <h1 class="m-0">{{ $titulo }}</h1>
                 </div>
             </div>
         </div>
     </div>

     <!-- panel 1 -->
    @livewire('tabla',
        [
            'titulo' => 'Tabla Usuarios',
            'modelo' => 'Usuario',
            'pagina' => 1,
            'objetosPagina' => 5,
        ],
        key('tabla-usuarios')
    )
 </div>
