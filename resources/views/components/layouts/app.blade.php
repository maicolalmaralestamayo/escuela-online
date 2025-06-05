<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Escuela Online</title>

  <!-- fonts -->
  <link rel="stylesheet" href="admin-lte/dist/fonts/css.css">
  <link rel="stylesheet" href="admin-lte/plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="admin-lte/dist/icons/ionicons.min.css">
  <link rel="stylesheet" href="admin-lte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <link rel="stylesheet" href="admin-lte/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <link rel="stylesheet" href="admin-lte/plugins/jqvmap/jqvmap.min.css">
  <link rel="stylesheet" href="admin-lte/dist/css/adminlte.min.css">
  <link rel="stylesheet" href="admin-lte/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <link rel="stylesheet" href="admin-lte/plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="admin-lte/plugins/summernote/summernote-bs4.min.css">
  <link rel="stylesheet" href="bootstrap/icons/bootstrap-icons.min.css">
  @livewireStyles
</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">
    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
      <img class="animation__shake" src="admin-lte/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
    </div>

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
      </ul>
    </nav>

    <!-- menú izquierdo -->
    <aside class="main-sidebar sidebar-light-primary elevation-4">
      <!-- logo + nombre de la aplicación -->
      <a href="index3.html" class="brand-link">
        <img src="admin-lte/dist/img/AdminLTELogo.png" alt="Escuela Online" class="brand-image img-circle elevation-3"
          style="opacity: .8">
        <span class="brand-text font-weight-light">Escuela Online</span>
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
            <!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
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

    <!-- área de trabajo (tablero) -->
    @livewire('tablero', ['titulo' => 'Tablero de prueba' ], key('tablero' . uniqid()))

    <!-- footer -->
    <footer class="main-footer">
      <strong>Derechos de autor &copy; 2024-2025
        <a href="http://wwww.twintechnology.cu">Twin Technology StartUp. </a>
      </strong>Todos los derechos reservados.
      <div class="float-right d-none d-sm-inline-block">
        <b>Version</b> 1.0.0
      </div>
    </footer>
  </div>

  <!-- Java Script -->
  <script src="admin-lte/plugins/jquery/jquery.min.js"></script>
  <script src="admin-lte/plugins/jquery-ui/jquery-ui.min.js"></script>
  <script>
    $.widget.bridge('uibutton', $.ui.button)
  </script>
  <script src="admin-lte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="admin-lte/plugins/chart.js/Chart.min.js"></script>
  <script src="admin-lte/plugins/sparklines/sparkline.js"></script>
  <script src="admin-lte/plugins/jqvmap/jquery.vmap.min.js"></script>
  <script src="admin-lte/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
  <script src="admin-lte/plugins/jquery-knob/jquery.knob.min.js"></script>
  <script src="admin-lte/plugins/moment/moment.min.js"></script>
  <script src="admin-lte/plugins/daterangepicker/daterangepicker.js"></script>
  <script src="admin-lte/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
  <script src="admin-lte/plugins/summernote/summernote-bs4.min.js"></script>
  <script src="admin-lte/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <script src="admin-lte/dist/js/adminlte.js"></script>
  {{-- activar solo cuantdo se utilice este tipo de componente --}}
  {{-- <script src="admin-lte/dist/js/pages/dashboard.js"></script> --}}

  @livewireScripts
</body>

</html>