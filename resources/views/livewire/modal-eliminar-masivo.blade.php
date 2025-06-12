<div class="modal fade" id="modalEliminarMasivo" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-danger">
                <h5 class="modal-title bi bi-exclamation-triangle">&nbsp;&nbsp;&nbsp;Eliminar</h5>
                <button type="button" class="close" data-dismiss="modal" title="Cerrar">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Está a punto de eliminar datos. La acción de eliminar datos es irreversible.<br><br>
                ¿Realmente desea eliminar datos?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger bi bi-trash" data-dismiss="modal" wire:click="confirmarEliminarMasivo" data-toggle="modal" data-target="#modalMasivoEliminado">&nbsp;&nbsp;&nbsp;Eliminar</button>
                <button type="button" class="btn btn-secondary bi bi-x-lg" data-dismiss="modal">&nbsp;&nbsp;&nbsp;Cancelar</button>
            </div>
        </div>
    </div>
</div>