<li class="nav-item">
    <a href="#" class="nav-link">
        <i class="nav-icon bi bi-{{ $opcionesMenu['cabecera']['icono'] }}"></i>
        <p>
            {{ $opcionesMenu['cabecera']['titulo'] }}
            <i class="nav-arrow bi bi-chevron-right"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        @foreach ($opcionesMenu['opciones'] as $opcion)
        @livewire('opcionSubMenu', [false, $opcion['icono'], $opcion['titulo']])    
        @endforeach
    </ul>
</li>