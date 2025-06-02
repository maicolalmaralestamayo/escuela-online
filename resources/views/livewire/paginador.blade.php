<div class="d-flex flex-wrap justify-content-center alihn-items-center">
    <nav>
        <ul class="pagination pagination-sm">
            <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}"><a class="page-link" href="#"> Primera </a></li>
            <li class="page-item {{ $pagina == 1 ? 'disabled' : '' }}"><a class="page-link" href="#"> Anterior </a></li>
            
            @for ($i = 1; $i < $totalPaginas+1; $i++)
                <li class="page-item {{ $pagina == $i ? 'active' : '' }}"><a class="page-link" href="#"> {{ $i }} </a></li>    
            @endfor

            <li class="page-item" {{ $pagina == $totalPaginas ? 'disabled' : '' }}><a class="page-link" href="#"> Siguiente </a></li>
            <li class="page-item" {{ $pagina == $totalPaginas ? 'disabled' : '' }}><a class="page-link" href="#"> Última </a></li>
        </ul>
    </nav>
</div>
