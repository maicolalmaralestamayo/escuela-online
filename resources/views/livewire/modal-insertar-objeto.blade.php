<div class="modal fade" id="modalInsertarObjeto" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title" >Insertar</h5>
                <button type="button" class="close" data-dismiss="modal" title="Cerrar">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Poner los campos
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-success" data-dismiss="modal" wire:click="confirmarInsertarObjeto" data-toggle="modal" data-target="#modalObjetoInsertado">Insertar</button>
            </div>
        </div>
    </div>
</div>