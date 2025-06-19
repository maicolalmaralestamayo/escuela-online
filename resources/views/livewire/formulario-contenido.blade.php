<form>
    @if ($id)
    @livewire('CamposNoModificables', ['id' => $id, 'created_at' => $created_at, 'updated_at' => $updated_at],
    key($modelo . $id . $created_at . $updated_at))
    @endif

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="propietario">Propietario</label>
                <input id="propietario" type="text" class="form-control" disabled value="{{$propietario}}">
            </div>
        </div>

        @if ($id)
        <div class="col-md-6">
            <div class="form-group">
                <label for="path">Path</label>
                <input id="path" type="text" class="form-control" wire:model.live='path' disabled>
            </div>
        </div>
        @endif
    </div>


    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="contenido">Recurso</label>
                <input id="contenido" type="text" class="form-control" wire:model.live='contenido'>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="tipo-contenido">Tipo de fichero</label>
                <select class="custom-select" id="tipo-contenido" wire:model.live='tipo_contenido_id'>
                    @foreach ($tipoContenidos as $tipo)
                    <option value={{ $tipo->id }}> {{$tipo->tipo}} </option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="col-md-6">
            <div class="form-group">
                <label for="observacion">Observación</label>
                <textarea id="observacion" class="form-control" rows="2" wire:model.live='observacion'> {{$observacion}} 
                            </textarea>
            </div>
        </div>
    </div>  
</form>