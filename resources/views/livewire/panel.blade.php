<section class="content">
    <!-- Default box -->
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Tabla {{ $titulo }}</h3>

            <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                    <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                    <i class="fas fa-times"></i>
                </button>
            </div>
        </div>

        {{-- tabla --}}
        <div class="card-body border-0">
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
                    'pagina' => 1,
                    'objetosPagina' => 5],
                key('tabla-'.$titulo))

        <div>
    </div>
    </div>
</section>
