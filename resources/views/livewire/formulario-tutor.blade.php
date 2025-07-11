<form>
    @if ($id)
        @livewire('CamposNoModificables', ['id' => $id, 'created_at' => $created_at, 'updated_at' => $updated_at], key($modelo . $id . $created_at . $updated_at))
    @endif

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="nombre_1">Nombre</label>
                <input id="nombre_1" type="text" class="form-control" wire:model.live='nombre_1'>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="nombre_2">Segundo nombre</label>
                <input id="nombre_2" type="text" class="form-control" wire:model.live='nombre_2'>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="apellido_1">Apellido</label>
                <input id="apellido_1" type="text" class="form-control" wire:model.live='apellido_1'>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="apellido_2">Segundo apellido</label>
                <input id="apellido_2" type="text" class="form-control" wire:model.live='apellido_2'>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="dni">DNI</label>
                <input id="dni" type="text" class="form-control" wire:model.live='dni'>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="genero">Género</label>
                <select class="custom-select" id="genero" wire:model.live='genero_id'>
                    @foreach ($generos as $genero)
                        <option value={{ $genero->id }}> {{$genero->genero}} </option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="correo">Correo</label>
                <input id="correo" type="text" class="form-control" wire:model.live='correo'>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="celular">Teléfono</label>
                <input id="celular" type="text" class="form-control" wire:model.live='celular'>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="observacion">Observación</label>
                <textarea id="observacion" class="form-control" rows="2" wire:model.live='observacion'> {{$observacion}} </textarea>
            </div>
        </div>
    </div>
</form>