<aside class="main-sidebar sidebar-light-primary elevation-4">
    <!-- logo + nombre de la aplicación -->
    <a href="index3.html" class="brand-link">
        <img src="admin-lte/dist/img/AdminLTELogo.png" alt={{$nombreAplicacion}} class="brand-image img-circle elevation-3"
            style="opacity: .8">
        <span class="brand-text font-weight-light">{{$nombreAplicacion}}</span>
    </a>

    <!-- opciones -->
    <div class="sidebar">
        <!-- perfil de usuario -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="admin-lte/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">Maicol Almarales</a>
            </div>
        </div>

        <!-- submenúes -->
        <nav class="mt-2 nav-light">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                @livewire(
                'sub-menu',
                [
                'cabecera' => ['icono' => 'clipboard-data', 'titulo' => 'Paneles de comando'],
                'opciones' => [
                ['icono' => 'people', 'titulo' => 'Personas', 'tituloTablero' => 'Comando de personas'],
                ['icono' => 'mortarboard', 'titulo' => 'Estructura', 'tituloTablero' => 'Comando de estructura']],
                'nombreSubMenu' => 'sub-menu-personas'
                ],
                key('sub-menu-personas'))

                @livewire(
                'sub-menu',
                [
                'cabecera' => ['icono' => 'people', 'titulo' => 'Personas'],
                'opciones' => [
                ['icono' => 'person-check', 'titulo' => 'Roles', 'tituloTablero' => 'Tablero Roles'],
                ['icono' => 'gender-ambiguous', 'titulo' => 'Géneros', 'tituloTablero' => 'Tablero Géneros'],
                ['icono' => 'person', 'titulo' => 'Usuarios', 'tituloTablero' => 'Tablero Usuarios'],
                ['icono' => 'person-fill', 'titulo' => 'Administradores', 'tituloTablero' => 'Tablero Administradores'],
                ['icono' => 'person-fill', 'titulo' => 'Directivos', 'tituloTablero' => 'Tablero Directivos'],
                ['icono' => 'person-fill', 'titulo' => 'Docentes', 'tituloTablero' => 'Tablero Docentes'],
                ['icono' => 'person-fill', 'titulo' => 'Tutores', 'tituloTablero' => 'Tablero Tutores'],
                ['icono' => 'person-fill', 'titulo' => 'Alumnos', 'tituloTablero' => 'Tablero Alumnos']],
                'nombreSubMenu' => 'sub-menu-personas'
                ],
                key('sub-menu-personas'))
            </ul>
        </nav>
    </div>
</aside>