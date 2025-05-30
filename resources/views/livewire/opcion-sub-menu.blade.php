<li class="nav-item" wire:click="marcar">
    <a href="#" class="nav-link {{ $marcado ? 'bg-primary text-white' : '' }}">
        <i class="nav-icon bi bi-{{ $icono }}"></i>
        <p>{{ $titulo }}</p>
    </a>
</li>