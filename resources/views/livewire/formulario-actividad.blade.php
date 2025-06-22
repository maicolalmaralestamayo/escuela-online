<form>
    @if ($id)
        @livewire('CamposNoModificables', ['id' => $id, 'created_at' => $created_at, 'updated_at' => $updated_at],
        key($modelo . $id . $created_at . $updated_at))
    @endif

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="creador">Creador</label>
                <input id="creador" type="text" class="form-control" wire:model.live='creador' disabled>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="actividad"> Título </label>
                <input id="actividad" type="text" class="form-control" wire:model.live='actividad'>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="inicio">Comienza {{$inicio}} </label>

                <div class="input-group date inicializar" id="picker-date-time-inicio" data-target-input="nearest">
                    <input type="text" class="form-control datetimepicker-input" id="inicio"
                        data-target="#picker-date-time-inicio" data-toggle="datetimepicker" wire:model.live='inicio'/>
                    <div class="input-group-append" data-target="#picker-date-time-inicio" data-toggle="datetimepicker">
                        <div class="input-group-text"><i class="bi bi-calendar"></i></div>
                    </div>
                </div>
        
                @script
                    <script>
                        inicializarDateTimePicker('#picker-date-time-inicio');
                    </script>
                @endscript
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="fin">Termina</label>
                <input id="fin" type="text" class="form-control" wire:model.live='fin'>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="descripcion">Descripción</label>
                <textarea id="descripcion" class="form-control" rows="2"
                    wire:model.live='descripcion'> {{$descripcion}} </textarea>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="observacion">Observación</label>
                <textarea id="observacion" class="form-control" rows="2"
                    wire:model.live='descripcion'> {{$observacion}} </textarea>
            </div>
        </div>

        {{-- <div class="col-md-3">
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
        </div> --}}
    </div>

    {{-- <div class="row">
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

        <div class="col-md-6">
            <div class="form-group">
                <label for="observacion">Observación</label>
                <textarea id="observacion" class="form-control" rows="2"
                    wire:model.live='observacion'> {{$observacion}} </textarea>
            </div>
        </div>
    </div> --}}
</form>