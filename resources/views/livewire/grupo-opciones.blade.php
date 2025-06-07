<li class="nav-item">
    <a href="#" class="nav-link">
        <i class="nav-icon bi bi-{{ $iconoGrupo }}"></i>
        <p>
            {{ $tituloGrupo }}
            <i class="right fas fa-angle-left"></i>
        </p>
    </a>

    @livewire('Submenu', 
        ['tituloSubmenu' => 'Personas', 
        'iconoSubmenu' => 'people', 
        'opcionesSubmenu' => [
            ['tituloOpcion' => 'Usuarios',
             'iconoOpcion' => 'person', 
             'tituloAreaTrabajo' => 'Área de Usuarios', 
             'codigoAreaTrabajo' => '01'], 
             
            ['tituloOpcion' => 'Géneros',
             'iconoOpcion' => 'gender-ambiguous', 
             'tituloAreaTrabajo' => 'Área de Géneros', 
             'codigoAreaTrabajo' => '02']]],

        key('submenu-personas'))
</li>