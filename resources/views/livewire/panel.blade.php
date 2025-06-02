<section class="content">
    <!-- Default box -->
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">{{ $titulo }}</h3>

            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                </button>
            </div>
        </div>

        <div class="card-body border-0">
            {{-- tabla --}}
            @livewire(
                'tabla',[
                    'campos' => [
                        'Nombre' => 'nombre_1',
                        'Segundo nombre' => 'nombre_2',
                        'Apellido' => 'apellido_1',
                        'Segundo apellido' => 'apellido_2',
                        'DNI' => 'dni'],
                    'llavesForaneas' => [
                        'Género' => ['genero', 'genero'],
                        'Rol' => ['rol', 'rol']],
                    'modelo' => 'Usuario',
                    'pagina' => $pagina,
                    'objetosPagina' => $objetosPagina],
                key('tabla-usuarios'))

            @livewire(
                'paginador', ['pagina' => $pagina, 'totalPaginas' => $totalPaginas],
                key('paginador-'.$totalPaginas))        
    </div>
    </div>
</section>
