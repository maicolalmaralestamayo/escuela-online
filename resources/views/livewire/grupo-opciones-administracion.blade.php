<li class="nav-item menu-open">
    <a href="#" class="nav-link">
        <i class="nav-icon bi bi-gear"></i>
        <p>
            Administración  
            <i class="right fas fa-angle-left"></i>
        </p>
    </a>

    @livewire('Submenu', 
        ['tituloSubmenu' => 'Acceso', 
        'iconoSubmenu' => 'person-lock', 
        'opcionesSubmenu' => [
            ['tituloOpcion' => 'Usuarios',
             'iconoOpcion' => 'people', 
             'tituloAreaTrabajo' => 'Área de Usuarios', 
             'codigoAreaTrabajo' => '01'],]])
    
    @livewire('Submenu', 
        ['tituloSubmenu' => 'Otros nomencladores', 
        'iconoSubmenu' => 'database-gear', 
        'opcionesSubmenu' => [
            ['tituloOpcion' => 'Géneros',
             'iconoOpcion' => 'gender-ambiguous', 
             'tituloAreaTrabajo' => 'Área de Géneros', 
             'codigoAreaTrabajo' => '02'],

            ['tituloOpcion' => 'Tipos de contenido',
             'iconoOpcion' => 'collection-play', 
             'tituloAreaTrabajo' => 'Área de Tipos de contenido', 
             'codigoAreaTrabajo' => '15'],
           ]])
</li>