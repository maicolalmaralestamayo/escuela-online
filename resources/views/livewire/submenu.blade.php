<ul class="nav nav-treeview">
    <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="far bi bi-{{ $iconoSubmenu }}"></i>
            <p>
                {{ $tituloSubmenu }}
                <i class="right fas fa-angle-left"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            @foreach ($opcionesSubmenu as $opcion)
                @livewire('OpcionSubmenu',
                    ['tituloOpcion' => $opcion['tituloOpcion'],
                    'iconoOpcion' => $opcion['iconoOpcion'], 
                    'tituloAreaTrabajo' => $opcion['tituloAreaTrabajo'],
                    'codigoAreaTrabajo' => $opcion['codigoAreaTrabajo']],
                     
                    key('opcion' . $tituloSubmenu . $loop->index))
            @endforeach
        </ul>
    </li>
</ul>