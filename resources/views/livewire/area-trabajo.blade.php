<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0"> {{ $tituloAreaTrabajo }} </h1>
                </div>
            </div>
        </div>
    </div>

    @switch($codigoAreaTrabajo)
        @case('00')
            <div>
                En construcción
            </div>
        @break
        
        @case('01')
            @livewire('tabla', 
                ['titulo' => 'Tabla Usuarios',
                'modelo' => 'Usuario',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break

        @case('02')
            @livewire('tabla', 
                ['titulo' => 'Tabla Géneros',
                'modelo' => 'Genero',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break

        @case('03')
            @livewire('tabla', 
                ['titulo' => 'Tabla Roles',
                'modelo' => 'Rol',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break
        @case('04')
            @livewire('tabla', 
                ['titulo' => 'Tabla Grados',
                'modelo' => 'Grado',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break

        @case('05')
            @livewire('tabla', 
                ['titulo' => 'Tabla Secciones',
                'modelo' => 'Seccion',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break

        @case('06')
            @livewire('tabla', 
                ['titulo' => 'Tabla Aulas',
                'modelo' => 'Aula',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break

        @case('07')
            @livewire('tabla', 
                ['titulo' => 'Tabla Asignaturas',
                'modelo' => 'Asignatura',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break

        @case('08')
            @livewire('tabla', 
                ['titulo' => 'Tabla Cursos',
                'modelo' => 'AsignaturaGrado',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break

        @case('09')
            @livewire('tabla', 
                ['titulo' => 'Tabla Tipos de calificaciones',
                'modelo' => 'Calificacion',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break

        @case('10')
            @livewire('tabla', 
                ['titulo' => 'Tabla Calificaciones por cursos',
                'modelo' => 'Aula',
                'pagina' => 1, 
                'objetosPagina' => 5])
        @break
        
        @default
            {{--  --}}
    @endswitch
</div>