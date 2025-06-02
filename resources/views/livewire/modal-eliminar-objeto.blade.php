<div class="modal fade" id="modalEliminarObjeto" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" >Eliminar datos con ID {{ $id }}.</h5>
                <button type="button" class="close" data-dismiss="modal" title="Cerrar">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Está a punto de eliminar los datos. La acción de eliminar los datos es irreversible. <br><br>
                Realmente desea eliminar los datos?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal" wire:click="eliminarObjeto">Eliminar</button>
            </div>
        </div>
    </div>
</div>