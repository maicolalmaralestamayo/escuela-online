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
                <label for="inicio"> Comienza </label>
                <div class="input-group date inicializar" id="picker-date-time-inicio{{$id}}" data-target-input="nearest">
                    <input type="text" class="form-control datetimepicker-input" id="inicio"
                        data-target="#picker-date-time-inicio{{$id}}" data-toggle="datetimepicker" wire:model.live='inicio'/>
                    <div class="input-group-append" data-target="#picker-date-time-inicio{{$id}}" data-toggle="datetimepicker">
                        <div class="input-group-text"><i class="bi bi-calendar4-week"></i></div>
                    </div>
                </div>
        
                @script
                    <script>
                        inicializarDateTimePicker("#picker-date-time-inicio{{$id}}");
                    </script>
                @endscript
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="fin"> Termina </label>

                <div class="input-group date inicializar" id="picker-date-time-fin{{$id}}" data-target-input="nearest">
                    <input type="text" class="form-control datetimepicker-input" id="fin"
                        data-target="#picker-date-time-fin{{$id}}" data-toggle="datetimepicker" wire:model.live='fin'/>
                    <div class="input-group-append" data-target="#picker-date-time-fin{{$id}}" data-toggle="datetimepicker">
                        <div class="input-group-text"><i class="bi bi-calendar4-week"></i></div>
                    </div>
                </div>
        
                @script
                    <script>
                        inicializarDateTimePicker("#picker-date-time-fin{{$id}}");
                    </script>
                @endscript
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
                    wire:model.live='observacion'> {{$observacion}} </textarea>
            </div>
        </div>
    </div>
</form>