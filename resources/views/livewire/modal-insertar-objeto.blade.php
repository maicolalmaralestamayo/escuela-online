<div class="modal fade" id="modalInsertarObjeto" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header bg-success">
                <h5 class="modal-title bi bi-database-up">&nbsp;&nbsp;&nbsp;Insertar</h5>

                <button type="button" class="close" data-dismiss="modal" title="Cerrar">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                @if ($modelo)    
                    @livewire('Formulario' . $modelo, ['id' => null], key('insertar' . $modelo))
                @endif
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success bi bi-database-up" data-dismiss="modal" wire:click="solicitarInsertarObjeto" data-toggle="modal" data-target="#modalObjetoInsertado">&nbsp;&nbsp;&nbsp;Insertar</button>
                    
                <button type="button" class="btn btn-secondary bi bi-x-lg" data-dismiss="modal">&nbsp;&nbsp;&nbsp;Cancelar</button>
            </div>
        </div>
    </div>
</div>