<aside class="main-sidebar sidebar-light-primary elevation-4">
    <!-- logo + nombre de la aplicación -->
    @livewire('NombreAplicacion', 
        ['nombreAplicacion' => 'Escuela Online',
         'logoAplicacion' => 'admin-lte/dist/img/logo.png'],

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