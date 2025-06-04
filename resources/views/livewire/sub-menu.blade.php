<li class="nav-item menu-open">
    <a href="#" class="nav-link">
        <i class="nav-icon bi bi-{{ $cabecera['icono'] }}"></i>
        <p>
            {{ $cabecera['titulo'] }}
            <i class="right bi bi-chevron-left"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        @foreach ($opciones as $opcion)
            @livewire( 'opcion-sub-menu',
                [
                    'icono' => $opcion['icono'], 
                    'titulo' => $opcion['titulo'], 
                    'tablero' => $opcion['tablero'], 
                    'id' => $id . '-opcion-' . $loop->index
                ],
                key($id . '-opcion-' . $loop->index)
            )
        @endforeach
    </ul>
</li>