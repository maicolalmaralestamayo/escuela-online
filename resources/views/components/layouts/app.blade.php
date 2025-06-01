<!doctype html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Escuela Online</title>

    <!--meta tags-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="title" content="Escuela Online" />
    <meta name="author" content="Maicol Almarales Tamayo" />
    <meta name="description" content="Aplicación para la gestión de una escuela online. Twin Technology Startup." />
    <meta name="keywords"
        content="escuela online, escuela virtual, escuela no presencial, enseñanza a distancia, enseñansa online, enseñanza virtual, enseñanza no presencial, educación online, educación virtual, educación no presencial" />

    <!--fonts-->
    <link href="{{ asset('adminLTE/css/index.css') }}" rel="stylesheet">
    <link href="{{ asset('adminLTE/css/overlayscrollbars.min.css') }}" rel="stylesheet">
    <link href="{{ asset('adminLTE/icons/bootstrap-icons.min.css') }}" rel="stylesheet">
    <link href="{{ asset('adminLTE/css/apexcharts.css') }}" rel="stylesheet">
    <link href="{{ asset('adminLTE/css/jsvectormap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('adminLTE/css/adminlte.min.css') }}" rel="stylesheet">


    <!--Livewire css-->
    @livewireStyles
</head>

<body class="layout-fixed sidebar-expand-lg bg-body-tertiary sidebar-mini">
    <!--App Wrapper-->
    <div class="app-wrapper">
        <!--menú principal superior-->
        <nav class="app-header navbar navbar-expand bg-body">
            <!--Container-->
            <div class="container-fluid">
                <!--botón de menú secundario-->
                <ul class="navbar-nav" title="Ver/Ocultar menú de opciones">
                    <li class="nav-item">
                        <a class="nav-link" data-lte-toggle="sidebar" href="#">
                            <i class="bi bi-list"></i>
                        </a>
                    </li>
                </ul>

                <ul class="navbar-nav ms-auto">
                    <!--Notifications anuncios-->
                    <li class="nav-item dropdown" title="Anuncios">
                        <a class="nav-link" data-bs-toggle="dropdown" href="#">
                            <i class="bi bi-megaphone"></i> Anuncios
                            <span class="navbar-badge badge text-bg-warning">15</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                            <span class="dropdown-item dropdown-header">15 Notifications</span>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="bi bi-envelope me-2"></i> 4 new messages
                                <span class="float-end text-secondary fs-7">3 mins</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="bi bi-people-fill me-2"></i> 8 friend requests
                                <span class="float-end text-secondary fs-7">12 hours</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="bi bi-file-earmark-fill me-2"></i> 3 new reports
                                <span class="float-end text-secondary fs-7">2 days</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item dropdown-footer"> See All Notifications </a>
                        </div>
                    </li>

                    <!--Notifications actividades-->
                    <li class="nav-item dropdown" title="Actividades">
                        <a class="nav-link" data-bs-toggle="dropdown" href="#">
                            <i class="bi bi-list-check"></i> Actividades
                            <span class="navbar-badge badge text-bg-warning">15</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                            <span class="dropdown-item dropdown-header">15 Notifications</span>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="bi bi-envelope me-2"></i> 4 new messages
                                <span class="float-end text-secondary fs-7">3 mins</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="bi bi-people-fill me-2"></i> 8 friend requests
                                <span class="float-end text-secondary fs-7">12 hours</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="bi bi-file-earmark-fill me-2"></i> 3 new reports
                                <span class="float-end text-secondary fs-7">2 days</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item dropdown-footer"> See All Notifications </a>
                        </div>
                    </li>

                    <!--Notifications respuestas-->
                    <li class="nav-item dropdown" title="Respuestas">
                        <a class="nav-link" data-bs-toggle="dropdown" href="#">
                            <i class="bi bi-pencil-square"></i> Respuestas
                            <span class="navbar-badge badge text-bg-warning">15</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                            <span class="dropdown-item dropdown-header">15 Notifications</span>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="bi bi-envelope me-2"></i> 4 new messages
                                <span class="float-end text-secondary fs-7">3 mins</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="bi bi-people-fill me-2"></i> 8 friend requests
                                <span class="float-end text-secondary fs-7">12 hours</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item">
                                <i class="bi bi-file-earmark-fill me-2"></i> 3 new reports
                                <span class="float-end text-secondary fs-7">2 days</span>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a href="#" class="dropdown-item dropdown-footer"> See All Notifications </a>
                        </div>
                    </li>

                    <!--botón de pantalla completa-->
                    <li class="nav-item" title="Pantalla completa">
                        <a class="nav-link" href="#" data-lte-toggle="fullscreen">
                            <i data-lte-icon="maximize" class="bi bi-arrows-fullscreen"></i>
                            <i data-lte-icon="minimize" class="bi bi-fullscreen-exit" style="display: none"></i>
                        </a>
                    </li>

                    <!--menú de usuario-->
                    <li class="nav-item dropdown user-menu">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img src="{{ asset('adminLTE/img/person.jpg') }}" class="user-image rounded-circle shadow"
                                alt="User Image" />
                            <span class="d-none d-md-inline">Maicol Almarales</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                            <!--User Image-->
                            <li class="user-header text-bg-primary">
                                <img src="{{ asset('adminLTE/img/person.jpg') }}" class="rounded-circle shadow"
                                    alt="User Image" />
                                <p>
                                    Administrador
                                </p>
                            </li>

                            <!--Menu Footer-->
                            <li class="user-footer">
                                <a href="#" class="btn btn-default btn-flat">Perfil</a>
                                <a href="#" class="btn btn-default btn-flat float-end">Eliminar registro <i
                                        class="bi bi-person-x"></i></a>
                                <a href="#" class="btn btn-default btn-flat float-end">Cambiar constraseña <i
                                        class="bi bi-asterisk"></i></a>
                                <a href="#" class="btn btn-default btn-flat float-end">Cerrar sesión <i
                                        class="bi bi-door-open"></i></a>
                            </li>

                        </ul>
                    </li>
                </ul>
            </div>
        </nav>

        <!--menú secundario izquierdo-->
        @livewire('MenuSecundario')

        <!--área de trabajo-->
        @livewire('AreaTrabajo')

        <!--footer-->
        <footer class="app-footer">
            <!--To the end-->
            <div class="float-end d-none d-sm-inline">Digitalizando sueños</div>

            <!--Copyright-->
            <strong>
                Copyright &copy; 2025&nbsp;
                <a href="https://twintechnology.cu" class="text-decoration-none">Twin Technology StartUp</a>.
            </strong>
            Todos los derechos reservados.

        </footer>
    </div>

<!-- Button trigger modal -->
<button id='miBoton' type="button" class="btn btn-primary" data-toggle="modal" data-target="#miModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="mi  Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<script>
    document.getElementById('miBoton').addEventListener('click', function() {
    var myModal = new bootstrap.Modal(document.getElementById('miModal'));
    myModal.show();
});

</script>

    {{-- @livewire('modal-eliminar-objeto', key('modal-eliminar-objeto')) --}}

    <!--scripts-->
    {{-- <script src="{{ asset('boostrap/js/bootstrap.min.js') }}"></script> --}}
    <script src="{{ asset('adminLTE/js/overlayscrollbars.browser.es6.min.js') }}"></script>
    <script src="{{ asset('adminLTE/js/jquery.slim.min.js') }}"></script>
    <script src="{{ asset('adminLTE/js/popper.min.js') }}"></script>
    <script src="{{ asset('adminLTE/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('adminLTE/js/adminlte.js') }}"></script>
    <script src="{{ asset('adminLTE/js/OverlayScrollbarsConfigure.js') }}"></script>


    <!--Livewire js-->
    @livewireScripts

    <!--scripts que no estoy utilizando--><!--
  <script src="js/Sortable.min.js"></script>
  <script src="js/sortablejs.js"></script>
  <script src="js/apexcharts.min.js"></script>
  <script src="js/jsvectormap.min.js"></script>
  <script src="js/world.js"></script>
  <script src="js/world-data.js"></script>-->
</body>

</html>
