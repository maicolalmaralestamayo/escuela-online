<div class="row">
    <div class="col-md-3">
        <div class="form-group">
            <label for="nombre_1">Nombre{{$nombre_1}} </label>
            <input id="nombre_1" type="text" class="form-control" wire:model.live='nombre_1' @if ($id)
                value={{ $nombre_1 }}
            @endif>
        </div>
    </div>

    <div class="col-md-3">
        <div class="form-group">
            <label for="nombre_2">Segundo nombre</label>
            <input id="nombre_2" type="text" class="form-control" wire:model.live='nombre_2' @if ($id)
                value={{ $nombre_2 }}
            @endif>
        </div>
    </div>

    <div class="col-md-3">
        <div class="form-group">
            <label for="nombre_2">Apellido</label>
            <input id="nombre_2" type="text" class="form-control" wire:model.live='apellido_1' @if ($id)
                value={{ $apellido_1 }}
            @endif>
        </div>
    </div>

    <div class="col-md-3">
        <div class="form-group">
            <label for="nombre_2">Segundo apellido</label>
            <input id="nombre_2" type="text" class="form-control" wire:model.live='apellido_2' @if ($id)
                value={{ $apellido_2 }}
            @endif>
        </div>
    </div>
</div>