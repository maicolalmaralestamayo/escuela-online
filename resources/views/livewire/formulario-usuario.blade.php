<form>
    @if ($id)
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">
                    <label for="id">ID</label>
                    <input id="id" type="text" class="form-control" value={{ $id }} disabled>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label for="created_at">Creado</label>
                    <input id="created_at" type="text" class="form-control" value={{ $objeto->created_at }} disabled>
                </div>
            </div>

            <div class="col-md-3">
                <div class="form-group">
                    <label for="updated_at">Actualizado</label>
                    <input id="updated_at" type="text" class="form-control" value={{ $objeto->updated_at }} disabled>
                </div>
            </div>
        </div>
    @endif
    

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="nombre_1">Nombre {{$nombre_1}}</label>
                <input id="nombre_1" type="text" class="form-control" wire:model.live='nombre_1' value={{ $nombre_1 }}>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="nombre_2">Segundo nombre</label>
                <input id="nombre_2" type="text" class="form-control" wire:model.live='nombre_2' value={{ $nombre_2 }}>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="apellido_1">Apellido</label>
                <input id="apellido_1" type="text" class="form-control" wire:model.live='apellido_1' @if ($id) value={{
                    $apellido_1 }} @endif>
            </div>
        </div>

        <div class="col-md-3">
            <div class="form-group">
                <label for="apellido_2">Segundo apellido</label>
                <input id="apellido_2" type="text" class="form-control" wire:model.live='apellido_2' @if ($id) value={{
                    $apellido_2 }} @endif>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="dni">DNI</label>
                <input id="dni" type="text" class="form-control" wire:model.live='dni' @if ($id) value={{ $dni }}
                    @endif>
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
                <textarea id="observacion" class="form-control" rows="2" wire:model.live='observacion'>
                    @if ($id)
                        {{$observacion}}
                    @endif
                </textarea>
            </div>
        </div>
    </div>
</form>