<td>
    <div class="btn-group btn-group-sm">
        <button type="button" class="btn btn-danger bi bi-trash" title="Eliminar datos" data-toggle="modal" data-target="#modal-eliminar-objeto"></button>
        <button type="button" class="btn btn-primary bi bi-check2-all" title="Inspeccionar datos"></button>
        <button type="button" class="btn btn-primary bi bi-arrow-repeat" title="Recargar datos"></button>
        <div class="btn-group btn-group-sm  ">
            <button type="button" class="btn btn-primary bi bi-share" data-bs-toggle="dropdown"
                title="Ver datos de tablas relacionadas">
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item text-secondary" href="#">Opción 1</a></li>
                <li><a class="dropdown-item text-secondary" href="#">Opción 2</a></li>
            </ul>
        </div>

        <div class="btn-group btn-group-sm">
            <button type="button" class="btn btn-primary dropdown-toggle no-flecha bi bi-three-dots"
                data-bs-toggle="dropdown" title="Más opciones">
            </button>
            <style>
                .no-flecha::after {
                    display: none;
                }
            </style>

            <ul class="dropdown-menu">
                <li><a class="dropdown-item text-secondary" href="#">Opción 1</a></li>
                <li><a class="dropdown-item text-secondary" href="#">Opción 2</a></li>
            </ul>
        </div>
    </div>
</td>