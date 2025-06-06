<div class="wrapper">
    <!-- Preloader -->
    

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
        </ul>
    </nav>

    <!-- menú izquierdo -->
    @livewire('menu-secundario', ['nombreAplicacion' => 'Escuela Online'], key('menu-secundario'))

    <!-- área de trabajo (tablero) -->
    @livewire('tablero', ['titulo' => $titulo], key('tablero' . $titulo))

    <!-- footer -->
    <footer class="main-footer">
        <strong>Derechos de autor &copy; 2024-2025
            <a href="http://wwww.twintechnology.cu">Twin Technology StartUp. </a>
        </strong>Todos los derechos reservados.
        <div class="float-right d-none d-sm-inline-block">
            <b>Version</b> 1.0.0
        </div>
    </footer>
</div>