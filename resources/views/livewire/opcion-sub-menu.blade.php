<li class="nav-item" wire:click="click">
    <a href="#" class="nav-link @if ($estado) active @endif">
        <i class="nav-icon bi bi-{{ $icono }}"></i>
        <p>{{ $titulo }}</p>
    </a>
</li>