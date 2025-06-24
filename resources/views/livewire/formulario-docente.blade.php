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

        <div class="col-md-3">
            <label for="dni">DNI</label>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="bi bi-person-vcard"></i></span>
                </div>
                <input type="text" id="dni" class="form-control" wire:model.live='dni'>
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
            <label for="correo">Correo electrónico</label>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="bi bi-envelope"></i></span>
                </div>
                <input type="email" id="correo" class="form-control" wire:model.live='correo'>
            </div>
        </div>

        <div class="col-md-3">
            <label for="celular">Teléfono</label>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text"><i class="bi bi-telephone"></i></span>
                </div>
                <input type="tel" id="celular" class="form-control" wire:model.live='celular'>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="aula">Aula</label>
                <select class="form-control select2bs4 inicializarSelect2" style="width: 100%;" id="aula" wire:model='aula_id'>
                    <option value={{null}}>Sin asignar aula</option>
                    @foreach ($aulas as $aula)
                        <option value={{ $aula->id }} {{ $aula->id == $aula_id ? 'selected' : '' }}> {{$aula->grado->grado}} {{$aula->seccion->seccion}} </option>
                    @endforeach
                </select>
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

@script
    <script>
        inicializarSelect2('#aula');
    </script>
@endscript