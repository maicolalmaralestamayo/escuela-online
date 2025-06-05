<nav class="m-1">
    <ul class="pagination pagination-sm mb-0"> <!-- Añadí mb-0 -->
        <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}" wire:click="setPagina(1)" title="Primera página">
            <a class="page-link bi bi-skip-backward-fill" href="#"></a>
        </li>
        <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}" wire:click="setPagina({{ $pagina - 1 }})" title="Página anterior">
            <a class="page-link bi bi-skip-backward" href="#"></a>
        </li>

        @for ($i = 1; $i <= $totalPaginas; $i++)
            <li class="page-item {{ $pagina == $i ? 'active' : '' }}" wire:click="setPagina({{ $i }})">
                <a class="page-link" href="#">{{ $i }}</a>
            </li>
        @endfor

        <li class="page-item {{ $pagina == $totalPaginas ? 'disabled' : '' }}"
            wire:click="setPagina({{ $pagina + 1 }})" title="Página siguiente">
            <a class="page-link bi bi-skip-forward" href="#"></a>
        </li>
        <li class="page-item {{ $pagina == $totalPaginas ? 'disabled' : '' }}"
            wire:click="setPagina({{ $totalPaginas }})" title="Última página">
            <a class="page-link bi bi-skip-forward-fill" href="#"></a>
        </li>
    </ul>
</nav>
