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
                                {{ $nombre }}
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
                                    <button type="button" class="btn btn-primary bi bi-share" data-bs-toggle="dropdown"
                                        title="Ver tablas relacionadas."> </button>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item text-secondary" href="#">Opción
                                                1</a></li>
                                        <li><a class="dropdown-item text-secondary" href="#">Opción
                                                2</a></li>
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
                                        <li><a class="dropdown-item text-secondary" href="#">Opción
                                                1</a></li>
                                        <li><a class="dropdown-item text-secondary" href="#">Opción
                                                2</a></li>
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