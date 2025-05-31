<li class="nav-item">
    <a href="#" class="nav-link">
        <i class="nav-icon bi bi-{{ $opcionesMenu['icono'] }}"></i>
        <p>
            {{ $opcionesMenu['titulo'] }}
            <i class="nav-arrow bi bi-chevron-right"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        @foreach ($opcionesMenu['opciones'] as $opcion)
            <livewire:opcionSubMenu
                :icono="$opcion['icono']"
                :titulo="$opcion['titulo']"
                :areaTrabajo="$opcion['areaTrabajo']"
                id="{{ $this->id }}-opcion-{{ $loop->index }}"

                wire:key="{{ $this->id }}-opcion-{{ $loop->index }}"
                wire:ref="{{ $this->id }}-opcion-{{ $loop->index }}"
            />
        @endforeach
    </ul>
</li>