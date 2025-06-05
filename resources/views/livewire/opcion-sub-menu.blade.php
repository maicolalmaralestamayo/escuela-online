<li class="nav-item" wire:click="click">
    <a href="#" class="nav-link @if ($estado) active bg-primary text-white @endif">
        <i class="nav-icon bi bi-{{ $icono }}"></i>
        <p>{{ $titulo }}</p>
    </a>
</li>