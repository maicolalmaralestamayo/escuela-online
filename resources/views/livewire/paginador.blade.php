<div class="d-flex flex-wrap justify-content-center alihn-items-center">
    <nav>
        <ul class="pagination pagination-sm">
            <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}" wire:click = "actualizarPagina(1)"><a class="page-link" href="#"> Primera </a></li>
            <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}" wire:click = "actualizarPagina({{ $pagina - 1 }})"><a class="page-link" href="#"> Anterior </a></li>
            
            @for ($i = 1; $i <= $totalPaginas; $i++)
                <li class="page-item {{ $pagina == $i ? 'active' : '' }}" wire:click = "actualizarPagina({{ $i }})"><a class="page-link" href="#"> {{ $i }} </a></li>    
            @endfor

            <li class="page-item" {{ $pagina == $totalPaginas ? 'disabled' : '' }} wire:click = "actualizarPagina({{ $pagina + 1 }})"><a class="page-link" href="#"> Siguiente </a></li>
            <li class="page-item" {{ $pagina == $totalPaginas ? 'disabled' : '' }} wire:click = "actualizarPagina({{ $totalPaginas }})"><a class="page-link" href="#"> Última </a></li>
        </ul>
    </nav>
</div>
