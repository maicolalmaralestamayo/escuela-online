<nav class="m-1">
    <ul class="pagination pagination-sm mb-0"> <!-- Añadí mb-0 -->
        <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}" wire:click="navegarPagina(1)">
            <a class="page-link" href="#">Primera</a>
        </li>
        <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}" wire:click="navegarPagina({{ $pagina - 1 }})">
            <a class="page-link" href="#">Anterior</a>
        </li>

        @for ($i = 1; $i <= $totalPaginas; $i++)
            <li class="page-item {{ $pagina == $i ? 'active' : '' }}" wire:click="navegarPagina({{ $i }})">
                <a class="page-link" href="#">{{ $i }}</a>
            </li>
        @endfor

        <li class="page-item {{ $pagina == $totalPaginas ? 'disabled' : '' }}"
            wire:click="navegarPagina({{ $pagina + 1 }})">
            <a class="page-link" href="#">Siguiente</a>
        </li>
        <li class="page-item {{ $pagina == $totalPaginas ? 'disabled' : '' }}"
            wire:click="navegarPagina({{ $totalPaginas }})">
            <a class="page-link" href="#">Última</a>
        </li>
    </ul>
</nav>
