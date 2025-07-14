<li class="nav-item menu-open">
    <a href="#" class="nav-link">
        <i class="nav-icon bi bi-buildings"></i>
        <p>
            Escuela
            <i class="right fas fa-angle-left"></i>
        </p>
    </a>

    @livewire('Submenu', 
        ['tituloSubmenu' => 'Estructura docente', 
        'iconoSubmenu' => 'diagram-3', 
        'opcionesSubmenu' => [
            ['tituloOpcion' => 'Directivos',
             'iconoOpcion' => 'person-check', 
             'tituloAreaTrabajo' => 'Área de Directivos', 
             'codigoAreaTrabajo' => '11'],

            ['tituloOpcion' => 'Docentes',
             'iconoOpcion' => 'person-check', 
             'tituloAreaTrabajo' => 'Área de Docentes', 
             'codigoAreaTrabajo' => '12'],

            ['tituloOpcion' => 'Tutores',
             'iconoOpcion' => 'person-check', 
             'tituloAreaTrabajo' => 'Área de Tutores', 
             'codigoAreaTrabajo' => '13'],

            ['tituloOpcion' => 'Alumnos',
             'iconoOpcion' => 'person-check', 
             'tituloAreaTrabajo' => 'Área de Alumno', 
             'codigoAreaTrabajo' => '14'],]]
    )

    @livewire('Submenu', 
        ['tituloSubmenu' => 'Estructura escolar', 
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
             'codigoAreaTrabajo' => '06']]]
    )

    
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
             'tituloAreaTrabajo' => 'Área de Tipos de calificaciones', 
             'codigoAreaTrabajo' => '09'],
             
             ['tituloOpcion' => 'Calificaciones (Cursos)',
             'iconoOpcion' => 'journal-check', 
             'tituloAreaTrabajo' => 'Área de Calificaciones por cursos', 
             'codigoAreaTrabajo' => '10']]]
    )

    
    @livewire('Submenu', 
        ['tituloSubmenu' => 'Evaluación', 
        'iconoSubmenu' => 'speedometer2', 
        'opcionesSubmenu' => [
            ['tituloOpcion' => 'Actividades',
             'iconoOpcion' => 'pencil-square', 
             'tituloAreaTrabajo' => 'Área de Actividades', 
             'codigoAreaTrabajo' => '16'], 

            ['tituloOpcion' => 'Recursos',
             'iconoOpcion' => 'collection-play-fill', 
             'tituloAreaTrabajo' => 'Área de Recursos', 
             'codigoAreaTrabajo' => '17'],]]
    )

</li>