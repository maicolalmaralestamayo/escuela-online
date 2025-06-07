<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- logo + nombre de la aplicación -->
    @livewire('NombreAplicacion', 
        ['nombreAplicacion' => 'Escuela Online',
         'logoAplicacion' => 'admin-lte/dist/img/AdminLTELogo.png'],

        key('nombre-aplicacion'))

    <!-- menu lateral izquierdo -->
    <div class="sidebar">
        {{-- nombre + foto del usuario --}}
        @livewire('UsuarioAplicacion', 
            ['Maykoll Almenarez', 
             'admin-lte/dist/img/user2-160x160.jpg'],

            key('usuario-aplicacion'))

        <!-- submenu -->
        @livewire('Menu', ['Menú'])
    </div>
</aside>