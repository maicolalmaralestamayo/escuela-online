 <div class="content-wrapper">
     <!-- título del tablero -->
     <div class="content-header">
         <div class="container-fluid">
             <div class="row mb-2">
                 <div class="col-sm-6">
                     <h1 class="m-0">Tablero {{ $titulo }}</h1>
                 </div>
             </div>
         </div>
     </div>

     <!-- panel 1 -->
     @livewire('panel', ['titulo' =>  $titulo , 'pagina' => 1, 'objetoPagina' => 2], key('panel-' . $titulo))
 </div>
