<div class="modal fade" id="modalObjetoEliminado" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Datos eliminados !!!</h5>
                <button type="button" class="close" data-dismiss="modal" title="Cerrar">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Los datos con identificador {{$id}} se eliminaron satisfactoriamente.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
                {{-- <button type="button" class="btn btn-danger" data-dismiss="modal" wire:click="eliminarObjeto">Eliminar</button> --}}
            </div>
        </div>
    </div>
</div>
