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

                            @livewire('tabla', ['columnas' => [
                                                    'genero' =>'Género', 
                                                    'abreviatura' => 'Abreviatura'],
                                                'modelo' => 'Genero'], key('tabla-generos'))

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>