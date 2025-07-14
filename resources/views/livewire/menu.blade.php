<nav class="mt-2">
    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" data-accordion="false">
        <li class="nav-header"> {{ $tituloMenu }} </li>

        @livewire('GrupoOpcionesPaneles')

        @livewire('GrupoOpcionesPrincipal')      

        @livewire('GrupoOpcionesAdministracion')  
    </ul>
</nav>