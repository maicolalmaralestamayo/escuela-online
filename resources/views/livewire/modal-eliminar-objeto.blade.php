<div class="modal fade" id="modalEliminarObjeto" tabindex="-1">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header bg-danger">
                <h5 class="modal-title bi bi-chevron-bar-expand">
                    &nbsp;&nbsp;&nbsp;Eliminar
                </h5>

                <button type="button" class="close" data-dismiss="modal" title="Cerrar">
                    <span>&times;</span>
                </button>
            </div>

            <div class="modal-body">
                Está a punto de eliminar datos. La acción de eliminar datos es irreversible.<br><br>
                ¿Realmente desea eliminar datos? 
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-danger bi bi-trash" data-dismiss="modal" wire:click="eliminarFila" data-toggle="modal" data-target="#modalObjetoEliminado">&nbsp;&nbsp;&nbsp;Eliminar</button>
                <button type="button" class="btn btn-secondary bi bi-x-lg" data-dismiss="modal">&nbsp;&nbsp;&nbsp;Cancelar</button>
            </div>
        </div>
    </div>
</div>