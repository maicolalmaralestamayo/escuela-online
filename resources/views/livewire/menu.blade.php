<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" data-accordion="false">
        <li class="nav-header"> {{ $tituloMenu }} </li>

        @livewire('GrupoOpciones', 
            ['tituloGrupo' => 'Datos', 
             'iconoGrupo' => 'database-check'], 
             
             key('grupo-opciones-datos'))        
    </ul>
</nav>