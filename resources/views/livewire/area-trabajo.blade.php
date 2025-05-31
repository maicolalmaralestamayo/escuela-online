<main class="app-main">
    @switch($areaTrabajo)
        @case('generos')
            @livewire('TableroGeneros', ['nombre' => 'Géneros'])
            @break
        @case('asignaturas')
            @livewire('TableroAsignaturas', ['nombre' => 'Asignaturas'])
            @break
        @case('aulas')
            @livewire('TableroAulas', ['nombre' => 'Aulas'])
            @break
        @default
    @endswitch
</main>