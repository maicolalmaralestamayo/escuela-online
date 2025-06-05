<li class="nav-item" wire:click="click">
    <a href="#" class="nav-link @if ($marcado) active @endif">
        <i class="nav-icon bi bi-{{ $icono }}"></i>
        <p>{{ $titulo }}</p>
    </a>
</li>