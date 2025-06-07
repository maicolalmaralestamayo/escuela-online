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
             'codigoAreaTrabajo' => '02'],
             
             ['tituloOpcion' => 'Roles',
             'iconoOpcion' => 'person-check', 
             'tituloAreaTrabajo' => 'Área de Roles', 
             'codigoAreaTrabajo' => '03']]])

    @livewire('Submenu', 
        ['tituloSubmenu' => 'Estructura docente', 
        'iconoSubmenu' => 'mortarboard', 
        'opcionesSubmenu' => [
            ['tituloOpcion' => 'Grados',
             'iconoOpcion' => '123', 
             'tituloAreaTrabajo' => 'Área de Grados', 
             'codigoAreaTrabajo' => '04'], 

            ['tituloOpcion' => 'Secciones',
             'iconoOpcion' => 'alphabet-uppercase', 
             'tituloAreaTrabajo' => 'Área de Secciones', 
             'codigoAreaTrabajo' => '05'],
             
             ['tituloOpcion' => 'Aulas',
             'iconoOpcion' => 'person-workspace', 
             'tituloAreaTrabajo' => 'Área de Aulas', 
             'codigoAreaTrabajo' => '06']]])

    @livewire('Submenu', 
        ['tituloSubmenu' => 'Estructura curricular', 
        'iconoSubmenu' => 'backpack2', 
        'opcionesSubmenu' => [
            ['tituloOpcion' => 'Asignaturas',
             'iconoOpcion' => 'journal-bookmark-fill', 
             'tituloAreaTrabajo' => 'Área de Asignaturas', 
             'codigoAreaTrabajo' => '07'], 

            ['tituloOpcion' => 'Cursos',
             'iconoOpcion' => 'journal-bookmark', 
             'tituloAreaTrabajo' => 'Área de Cursos', 
             'codigoAreaTrabajo' => '08'],
             
             ['tituloOpcion' => 'Tipos de calific.',
             'iconoOpcion' => 'filetype-aac', 
             'tituloAreaTrabajo' => 'Área de tipos de calificaciones', 
             'codigoAreaTrabajo' => '09'],
             
             ['tituloOpcion' => 'Calificaciones (Cursos)',
             'iconoOpcion' => 'journal-check', 
             'tituloAreaTrabajo' => 'Área de calificaciones por cursos', 
             'codigoAreaTrabajo' => '10']]])
</li>