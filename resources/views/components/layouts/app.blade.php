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
                            <img src="{{ asset('adminLTE/img/person.jpg') }}" class="user-image rounded-circle shadow" alt="User Image" />
                            <span class="d-none d-md-inline">Maicol Almarales</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-end">
                            <!--User Image-->
                            <li class="user-header text-bg-primary">
                                <img src="{{ asset('adminLTE/img/person.jpg') }}" class="rounded-circle shadow" alt="User Image" />
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
        @livewire('MenuSecundario', [
        'nombreAplicacion' => 'Escuela Online',
        'opcionesMenu' => [
        [
        'cabecera' => [
        'icono' => 'person', 'titulo' => 'Personas'
        ],
        'opciones' => [
        ['icono' => 'person-gear', 'titulo' => 'Roles'],
        ['icono' => 'people', 'titulo' => 'Usuarios'],
        ['icono' => 'person-up', 'titulo' => 'Administradores'],
        ['icono' => 'person-check', 'titulo' => 'Directivos'],
        ['icono' => 'person-check', 'titulo' => 'Docentes'],
        ['icono' => 'person-check', 'titulo' => 'Tutores'],
        ['icono' => 'person-check', 'titulo' => 'Alumnos'],
        ['icono' => 'person-vcard', 'titulo' => 'Contactos'],
        ['icono' => 'gender-ambiguous', 'titulo' => 'Géneros']
        ]
        ],
        [
        'cabecera' => [
        'icono' => 'mortarboard', 'titulo' => 'Estructura'
        ],
        'opciones' => [
        ['icono' => '123', 'titulo' => 'Grados'],
        ['icono' => 'alphabet-uppercase', 'titulo' => 'Secciones'],
        ['icono' => 'book', 'titulo' => 'Asignaturas'],
        ['icono' => 'journal-check', 'titulo' => 'Cursos'],
        ['icono' => 'person-workspace', 'titulo' => 'Aulas']
        ]
        ],
        [
        'cabecera' => [
        'icono' => 'speedometer2', 'titulo' => 'Formación'
        ],
        'opciones' => [
        ['icono' => 'collection-play', 'titulo' => 'Tipos de recursos'],
        ['icono' => 'file-earmark-binary', 'titulo' => 'Recursos'],
        ['icono' => 'list-check', 'titulo' => 'Actividades'],
        ['icono' => 'pencil-square', 'titulo' => 'Respuestas'],
        ['icono' => 'megaphone', 'titulo' => 'Anuncios']
        ]
        ],
        [
        'cabecera' => [
        'icono' => 'clipboard-check', 'titulo' => 'Evaluación'
        ],
        'opciones' => [
        ['icono' => '5-circle', 'titulo' => 'Tipos de calificaciones'],
        ['icono' => 'patch-check', 'titulo' => 'Calif. cursos'],
        ]
        ]
        ]
        ])

        <!--área de trabajo-->
        <main class="app-main">
            <!--tablero-->
            <div class="app-content-header">
                <!--Container-->
                <div class="container-fluid">
                    <!--Row-->
                    <div class="row">
                        <div class="col-12">
                            <!-- Default box -->
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">
                                        Aulas
                                    </h3>
                                    <div class="card-tools">
                                        <button type="button" class="btn btn-tool" data-lte-toggle="card-collapse"
                                            title="Ver/Ocultar">
                                            <i data-lte-icon="expand" class="bi bi-plus-lg"></i>
                                            <i data-lte-icon="collapse" class="bi bi-dash-lg"></i>
                                        </button>
                                        <button type="button" class="btn btn-tool" data-lte-toggle="card-remove"
                                            title="Cerrar">
                                            <i class="bi bi-x-lg"></i>
                                        </button>
                                    </div>
                                </div>

                                <div class="card-body table-responsive">
                                    <div class="btn-group btn-group-sm mb-2">
                                        <button type="button" class="btn btn-danger bi bi-trash"
                                            title="Eliminar datos seleccionados."></button>
                                        <button type="button" class="btn btn-primary bi bi-plus-lg"
                                            title="Insertar datos en la tabla."></button>
                                        <button type="button" class="btn btn-primary bi bi-arrow-repeat"
                                            title="Recargar datos de la tabla."></button>
                                        <div class="btn-group btn-group-sm">
                                            <button type="button" class="btn btn-primary bi bi-share"
                                                data-bs-toggle="dropdown" title="Ver tablas relacionadas."> </button>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item text-secondary" href="#">Opción 1</a></li>
                                                <li><a class="dropdown-item text-secondary" href="#">Opción 2</a></li>
                                            </ul>
                                        </div>
                                        <button type="button" class="btn btn-primary bi bi-filetype-csv"
                                            title="Exportar datos de la tabla a fichero .CSV"></button>
                                        <div class="btn-group btn-group-sm">
                                            <button type="button"
                                                class="btn btn-primary dropdown-toggle no-flecha bi bi-three-dots"
                                                data-bs-toggle="dropdown" title="Más opciones.">
                                            </button>

                                            <style>
                                                .no-flecha::after {
                                                    display: none;
                                                }
                                            </style>

                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item text-secondary" href="#">Opción 1</a></li>
                                                <li><a class="dropdown-item text-secondary" href="#">Opción 2</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <table class="table table-bordered mb-2">
                                        <thead>
                                            <tr>
                                                <th style="width: 0px">
                                                    <input class="form-check-input" type="checkbox" value=""
                                                        id="idLabel">
                                                </th>
                                                <th style="width: 10px">ID</th>
                                                <th>Grado</th>
                                                <th>Sección</th>
                                                <th>Descripción</th>
                                                <th>Observación</th>
                                                <th style="width: 40px">Operaciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="align-middle">
                                                <td style="width: 0px">
                                                    <input class="form-check-input" type="checkbox" value=""
                                                        id="idLabel">
                                                </td>
                                                <td>1</td>
                                                <td>primer grado</td>
                                                <td>sección A</td>
                                                <td> </td>
                                                <td> </td>
                                                <td>
                                                    <div class="btn-group btn-group-sm">
                                                        <button type="button" class="btn btn-danger bi bi-trash"
                                                            title="Eliminar datos."></button>
                                                        <button type="button" class="btn btn-primary bi bi-check2-all"
                                                            title="Inspeccionar datos."></button>
                                                        <button type="button" class="btn btn-primary bi bi-arrow-repeat"
                                                            title="Recargar datos."></button>
                                                        <div class="btn-group btn-group-sm  ">
                                                            <button type="button" class="btn btn-primary bi bi-share"
                                                                data-bs-toggle="dropdown"
                                                                title="Ver datos de tablas relacionadas.">
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 1</a></li>
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 2</a></li>
                                                            </ul>
                                                        </div>

                                                        <div class="btn-group btn-group-sm">
                                                            <button type="button"
                                                                class="btn btn-primary dropdown-toggle no-flecha bi bi-three-dots"
                                                                data-bs-toggle="dropdown" title="Más opciones.">
                                                            </button>
                                                            <style>
                                                                .no-flecha::after {
                                                                    display: none;
                                                                }
                                                            </style>

                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 1</a></li>
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 2</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr class="align-middle">
                                                <td style="width: 0px">
                                                    <input class="form-check-input" type="checkbox" value=""
                                                        id="idLabel">
                                                </td>
                                                <td>1</td>
                                                <td>primer grado</td>
                                                <td>sección A</td>
                                                <td> </td>
                                                <td> </td>
                                                <td>
                                                    <div class="btn-group btn-group-sm">
                                                        <button type="button" class="btn btn-danger bi bi-trash"
                                                            title="Eliminar datos."></button>
                                                        <button type="button" class="btn btn-primary bi bi-check2-all"
                                                            title="Inspeccionar datos."></button>
                                                        <button type="button" class="btn btn-primary bi bi-arrow-repeat"
                                                            title="Recargar datos."></button>
                                                        <div class="btn-group btn-group-sm  ">
                                                            <button type="button" class="btn btn-primary bi bi-share"
                                                                data-bs-toggle="dropdown"
                                                                title="Ver datos de tablas relacionadas.">
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 1</a></li>
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 2</a></li>
                                                            </ul>
                                                        </div>

                                                        <div class="btn-group btn-group-sm">
                                                            <button type="button"
                                                                class="btn btn-primary dropdown-toggle no-flecha bi bi-three-dots"
                                                                data-bs-toggle="dropdown" title="Más opciones.">
                                                            </button>
                                                            <style>
                                                                .no-flecha::after {
                                                                    display: none;
                                                                }
                                                            </style>

                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 1</a></li>
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 2</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr class="align-middle">
                                                <td style="width: 0px">
                                                    <input class="form-check-input" type="checkbox" value=""
                                                        id="idLabel">
                                                </td>
                                                <td>1</td>
                                                <td>primer grado</td>
                                                <td>sección A</td>
                                                <td> </td>
                                                <td> </td>
                                                <td>
                                                    <div class="btn-group btn-group-sm">
                                                        <button type="button" class="btn btn-danger bi bi-trash"
                                                            title="Eliminar datos."></button>
                                                        <button type="button" class="btn btn-primary bi bi-check2-all"
                                                            title="Inspeccionar datos."></button>
                                                        <button type="button" class="btn btn-primary bi bi-arrow-repeat"
                                                            title="Recargar datos."></button>
                                                        <div class="btn-group btn-group-sm  ">
                                                            <button type="button" class="btn btn-primary bi bi-share"
                                                                data-bs-toggle="dropdown"
                                                                title="Ver datos de tablas relacionadas.">
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 1</a></li>
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 2</a></li>
                                                            </ul>
                                                        </div>

                                                        <div class="btn-group btn-group-sm">
                                                            <button type="button"
                                                                class="btn btn-primary dropdown-toggle no-flecha bi bi-three-dots"
                                                                data-bs-toggle="dropdown" title="Más opciones.">
                                                            </button>
                                                            <style>
                                                                .no-flecha::after {
                                                                    display: none;
                                                                }
                                                            </style>

                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 1</a></li>
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 2</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr class="align-middle">
                                                <td style="width: 0px">
                                                    <input class="form-check-input" type="checkbox" value=""
                                                        id="idLabel">
                                                </td>
                                                <td>1</td>
                                                <td>primer grado</td>
                                                <td>sección A</td>
                                                <td> </td>
                                                <td> </td>
                                                <td>
                                                    <div class="btn-group btn-group-sm">
                                                        <button type="button" class="btn btn-danger bi bi-trash"
                                                            title="Eliminar datos."></button>
                                                        <button type="button" class="btn btn-primary bi bi-check2-all"
                                                            title="Inspeccionar datos."></button>
                                                        <button type="button" class="btn btn-primary bi bi-arrow-repeat"
                                                            title="Recargar datos."></button>
                                                        <div class="btn-group btn-group-sm  ">
                                                            <button type="button" class="btn btn-primary bi bi-share"
                                                                data-bs-toggle="dropdown"
                                                                title="Ver datos de tablas relacionadas.">
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 1</a></li>
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 2</a></li>
                                                            </ul>
                                                        </div>

                                                        <div class="btn-group btn-group-sm">
                                                            <button type="button"
                                                                class="btn btn-primary dropdown-toggle no-flecha bi bi-three-dots"
                                                                data-bs-toggle="dropdown" title="Más opciones.">
                                                            </button>
                                                            <style>
                                                                .no-flecha::after {
                                                                    display: none;
                                                                }
                                                            </style>

                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 1</a></li>
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 2</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr class="align-middle">
                                                <td style="width: 0px">
                                                    <input class="form-check-input" type="checkbox" value=""
                                                        id="idLabel">
                                                </td>
                                                <td>1</td>
                                                <td>primer grado</td>
                                                <td>sección A</td>
                                                <td> </td>
                                                <td> </td>
                                                <td>
                                                    <div class="btn-group btn-group-sm">
                                                        <button type="button" class="btn btn-danger bi bi-trash"
                                                            title="Eliminar datos."></button>
                                                        <button type="button" class="btn btn-primary bi bi-check2-all"
                                                            title="Inspeccionar datos."></button>
                                                        <button type="button" class="btn btn-primary bi bi-arrow-repeat"
                                                            title="Recargar datos."></button>
                                                        <div class="btn-group btn-group-sm  ">
                                                            <button type="button" class="btn btn-primary bi bi-share"
                                                                data-bs-toggle="dropdown"
                                                                title="Ver datos de tablas relacionadas.">
                                                            </button>
                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 1</a></li>
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 2</a></li>
                                                            </ul>
                                                        </div>

                                                        <div class="btn-group btn-group-sm">
                                                            <button type="button"
                                                                class="btn btn-primary dropdown-toggle no-flecha bi bi-three-dots"
                                                                data-bs-toggle="dropdown" title="Más opciones.">
                                                            </button>
                                                            <style>
                                                                .no-flecha::after {
                                                                    display: none;
                                                                }
                                                            </style>

                                                            <ul class="dropdown-menu">
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 1</a></li>
                                                                <li><a class="dropdown-item text-secondary"
                                                                        href="#">Opción 2</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <div class="d-flex flex-wrap justify-content-center align-items-center gap-2">
                                        <nav class="">
                                            <ul class="pagination pagination-sm mb-0">
                                                <li class="page-item d-none d-sm-block">
                                                    <a class="page-link bi bi-arrow-bar-left" href="#"
                                                        title="Primera página"></a>
                                                </li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#" aria-label="Anterior"
                                                        title="Anterior">
                                                        <span aria-hidden="true">«</span>
                                                    </a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item disabled"><a class="page-link" href="#">...</a>
                                                </li>
                                                <li class="page-item"><a class="page-link" href="#">7</a></li>
                                                <li class="page-item active"><a class="page-link" href="#">8</a></li>
                                                <li class="page-item"><a class="page-link" href="#">9</a></li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#" aria-label="Siguiente"
                                                        title="Siguiente">
                                                        <span aria-hidden="true">»</span>
                                                    </a>
                                                </li>
                                                <li class="page-item d-none d-sm-block">
                                                    <a class="page-link bi bi-arrow-bar-right" href="#"
                                                        title="Última página"></a>
                                                </li>
                                            </ul>
                                        </nav>

                                        <div class="d-flex flex-wrap justify-content-center align-items-center gap-1">
                                            <div class="input-group input-group-sm m-1" style="width: 90px;">
                                                <span class="input-group-text bg-primary text-white">Ir a</span>
                                                <input type="text" class="form-control text-center" value="10"
                                                    style="min-width: 20px;">
                                            </div>

                                            <div class="input-group input-group-sm m-1" style="width: 140px;">
                                                <span class="input-group-text bg-primary text-white">Por página</span>
                                                <input type="text" class="form-control text-center" value="10"
                                                    style="min-width: 20px;">
                                            </div>

                                            <div class="input-group input-group-sm m-1" style="width: 100px;">
                                                <span class="input-group-text bg-primary text-white">Total</span>
                                                <input type="text" class="form-control text-center" value="100"
                                                    style="min-width: 20px;" readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

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

    <!--scripts-->
    <script src="{{ asset('adminLTE/js/overlayscrollbars.browser.es6.min.js') }}"></script>
    <script src="{{ asset('adminLTE/js/popper.min.js') }}"></script>
    <script src="{{ asset('adminLTE/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('adminLTE/js/adminlte.js') }}"></script>
    <script src="{{ asset('adminLTE/js/OverlayScrollbarsConfigure.js') }}"></script>


    <!--Livewire js-->
    @livewireScripts

    <!--scripts que no estoy utilizando--><!--
  <script src="js/Sortable.min.js"></script>
  <script src="js/sortablejs.js"> </script>
  <script src="js/apexcharts.min.js"></script>
  <script src="js/jsvectormap.min.js"></script>
  <script src="js/world.js"></script>
  <script src="js/world-data.js"> </script>-->
</body>

</html>