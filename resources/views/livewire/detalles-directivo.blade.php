<form>
    <div class="row">
        {{-- ID --}}
        <div class="col-sm-2">
            <div class="form-group">
                <label>ID</label>
                <input type="text" class="form-control text-center" @if ($id) value={{ $id }} @else {{-- --}} @endif
                    disabled>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <div class="form-group">
                <label>Observación</label>
                <textarea class="form-control" rows="2">@if($id){{ $objeto->observacion }}@endif</textarea>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
            <div class="form-group">
                <label>Creado</label>
                <input type="text" class="form-control" @if ($id) value={{ $objeto->created_at }}
                @else
                {{-- --}}
                @endif disabled>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group">
                <label>Actualizado</label>
                <input type="text" class="form-control" @if ($id) value={{ $objeto->updated_at }}
                @else
                {{-- --}}
                @endif disabled>
            </div>
        </div>
    </div>
</form>
