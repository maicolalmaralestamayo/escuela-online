<div class="row d-flex justify-content-center">
    <div class="col-md-2">
        <label for="id">ID</label>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="bi bi-123"></i></span>
            </div>
            <input type="text-center" id="id" class="form-control" disabled value="{{$id}}">
        </div>
    </div>

    <div class="col-md-3">
        <label for="created_at">Creado</label>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="bi-calendar4-week"></i></span>
            </div>
            <input type="text" id="created_at" class="form-control" disabled wire:model.live='created_at'>
        </div>
    </div>

    <div class="col-md-3">
        <label for="updated_at">Actualizado</label>
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text"><i class="bi-calendar4-week"></i></span>
            </div>
            <input type="text" id="updated_at" class="form-control" disabled wire:model.live='updated_at'>
        </div>
    </div>
</div>