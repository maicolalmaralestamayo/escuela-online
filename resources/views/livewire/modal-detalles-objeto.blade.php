<div class="modal fade" id="modalDetallesObjeto" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header @if ($id) bg-primary @else bg-success @endif">
                @if ($id)
                    <h5 class="modal-title bi bi-chevron-bar-expand">&nbsp;&nbsp;&nbsp;Detalles</h5>
                @else
                    <h5 class="modal-title bi bi-database-up">&nbsp;&nbsp;&nbsp;Insertar</h5>
                @endif

                <button type="button" class="close" data-dismiss="modal" title="Cerrar">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                @livewire('Formulario' . $modelo, ['id' => $id], key('detalles' . $modelo . $id))
            </div>
            <div class="modal-footer">
                @if ($id)
                    <button type="button" class="btn btn-warning bi bi-database-down" data-dismiss="modal" wire:click='solicitarActualizarObjeto' data-toggle="modal" data-target="#modalObjetoActualizado">&nbsp;&nbsp;&nbsp;Actualizar</button>

                    <button type="button" class="btn btn-danger bi bi-trash" data-dismiss="modal" wire:click="solicitarEliminarObjeto" data-toggle="modal" data-target="#modalEliminarObjeto">&nbsp;&nbsp;&nbsp;Eliminar</button>
                @else
                    <button type="button" class="btn btn-success bi bi-database-up" data-dismiss="modal" wire:click="solicitarInsertarObjeto" data-toggle="modal" data-target="#modalObjetoInsertado">&nbsp;&nbsp;&nbsp;Insertar</button>
                @endif
                    
                <button type="button" class="btn btn-secondary bi bi-x-lg" data-dismiss="modal">&nbsp;&nbsp;&nbsp;Cancelar</button>
            </div>
        </div>
    </div>
</div>