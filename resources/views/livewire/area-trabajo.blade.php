<main class="app-main">
    @switch($areaTrabajo)
        @case('roles')
            @livewire('TableroRoles', ['nombre' => 'Roles'])
            @break
        @case('usuarios')
            @livewire('TableroUsuarios', ['nombre' => 'Usuarios'])
            @break
        @case('administradores')
            @livewire('TableroAdministradores', ['nombre' => 'Administradores'])
            @break
        @case('directivos')
            @livewire('TableroDirectivos', ['nombre' => 'Directivos'])
            @break
        @case('docentes')
            @livewire('TableroDocentes', ['nombre' => 'Docentes'])
            @break
        @case('tutores')
            @livewire('TableroTutores', ['nombre' => 'Tutores'])
            @break
        @case('alumnos')
            @livewire('TableroAlumnos', ['nombre' => 'Alumnos'])
            @break
        @case('contactos')
            @livewire('TableroContactos', ['nombre' => 'Contactos'])
            @break
        @case('generos')
            @livewire('TableroGeneros', ['nombre' => 'Géneros'])
            @break
        @default
    @endswitch
</main>