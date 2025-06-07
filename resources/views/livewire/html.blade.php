<div class="wrapper">
    @livewire('MenuPrincipal')

    @livewire('MenuSecundario')

    @livewire('AreaTrabajo', 
        ['tituloAreaTrabajo' => $tituloAreaTrabajo,
         'codigoAreaTrabajo' => $codigoAreaTrabajo], 
        
        key($tituloAreaTrabajo . $codigoAreaTrabajo))
</div>