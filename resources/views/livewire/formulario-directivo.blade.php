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
            {{-- <div class="form-group">
                <label for="id_usuario">ID Usuario</label>
                <input id="id_usuario" type="text" class="form-control" wire:model.live='nombre_1' @if ($id) value={{
                    $nombre_1 }} @endif>
            </div> --}}
            <button type="button" class="btn btn-outline-primary bi bi-chevron-bar-expand" title="Detalles" data-toggle="modal" wire:click="detallesObjeto" data-target="#modalDetallesObjeto"></button>
        </div>
    </div>
    

    {{-- <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label for="nombre_1">Nombre</label>
                <input id="nombre_1" type="text" class="form-control" wire:model.live='nombre_1' @if ($id) value={{
                    $nombre_1 }} @endif>
            </div>
        </div>
    </div> --}}

    {{-- <div class="row">
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
    </div> --}}
</form>