<div class="modal fade" id="modalDetallesObjeto" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title" >Detalles</h5>
                <button type="button" class="close" data-dismiss="modal" title="Cerrar">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                @livewire('Detalles' . $modelo, key('detalles' . $modelo))
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning" data-dismiss="modal" wire:click="confirmarInsertarObjeto" data-toggle="modal" data-target="#modalObjetoInsertado">Actualizar</button>    

                <button type="button" class="btn btn-danger" data-dismiss="modal" wire:click="solicitarEliminarObjeto" data-toggle="modal" data-target="#modalEliminarObjeto">Eliminar</button>

                <button type="button" class="btn btn-primary" data-dismiss="modal">Salir</button>
            </div>
        </div>
    </div>
</div>