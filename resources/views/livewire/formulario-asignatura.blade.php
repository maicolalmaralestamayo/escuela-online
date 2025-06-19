<form>
    @if ($id)
        @livewire('CamposNoModificables', ['id' => $id, 'created_at' => $created_at, 'updated_at' => $updated_at], key($modelo . $id . $created_at . $updated_at))
    @endif

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="asignatura">Asignatura</label>
                <input id="asignatura" type="text" class="form-control" wire:model.live='asignatura'>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="abreviatura">Abreviatura</label>
                <input id="abreviatura" type="text" class="form-control" wire:model.live='abreviatura'>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="observacion">Observación</label>
                <textarea id="observacion" class="form-control" rows="2" wire:model.live='observacion'> {{$observacion}} </textarea>
            </div>
        </div>
    </div>
</form>