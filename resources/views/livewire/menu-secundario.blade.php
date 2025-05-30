<aside class="app-sidebar bg-body-secondary shadow" data-bs-theme="light">
    <!--cabecera-->
    <div class="sidebar-brand bg-primary">
        <a href="/" class="brand-link">
            <!--logo-->
            <img src="{{ asset('adminLTE/img/logo.png') }}" alt={{$nombreAplicacion}}
                class="brand-image shadow rounded-circle" />

            <!--nombre de la aplicación-->
            <span class="brand-text fw-light text-white">{{$nombreAplicacion}}</span>
        </a>
    </div>

    <!--opciones-->
    <div class="sidebar-wrapper">
        <nav class="mt-2">
            <ul class="nav sidebar-menu flex-column" data-lte-toggle="treeview" data-accordion="false">
                <!--grupo de opciones Personas-->
                @foreach ($opcionesMenu as $opcion)
                    @livewire('subMenu', ['opcionesMenu' => $opcionesMenu[$loop->index]])
                @endforeach
            </ul>
        </nav>
    </div>
</aside>