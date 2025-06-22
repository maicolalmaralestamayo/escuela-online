<div class="modal fade" id="modalDetallesObjeto" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title bi bi-chevron-bar-expand">&nbsp;&nbsp;&nbsp;Detalles</h5>

                <button type="button" class="close" data-dismiss="modal" title="Cerrar">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body" wire:lazy>
                @if ($modelo)
                    @livewire('Formulario' . $modelo, ['modelo' => $modelo, 'id' => $id], key($modelo . $id))
                @endif
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-warning bi bi-database-down" data-dismiss="modal" wire:click='solicitarActualizarObjeto' data-toggle="modal" data-target="#modalObjetoActualizado">&nbsp;&nbsp;&nbsp;Actualizar</button>
                <button type="button" class="btn btn-danger bi bi-trash" data-dismiss="modal" wire:click="solicitarEliminarObjeto" data-toggle="modal" data-target="#modalEliminarObjeto">&nbsp;&nbsp;&nbsp;Eliminar</button>
                <button type="button" class="btn btn-secondary bi bi-x-lg" data-dismiss="modal">&nbsp;&nbsp;&nbsp;Cancelar</button>
            </div>
        </div>
    </div>
</div>

<script>
    Livewire.on('inicializarDatetimepicker', () => {
        $(".ok").datetimepicker({
            format: "YYYY-MM-DD HH:mm:ss",
            icons: {
                time: "bi bi-clock",
                date: "bi bi-calendar",
                up: "bi bi-chevron-double-up",
                down: "bi bi-chevron-double-down",
                previous: "bi bi-chevron-double-left",
                next: "bi bi-chevron-double-right",
                today: "bi bi-check",
                clear: "bi bi-trash",
                close: "bi bi-x-lg",
            },
        });
    });
</script>
