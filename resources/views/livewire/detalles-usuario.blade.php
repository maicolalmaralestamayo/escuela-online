<form>
    <div class="row">
        @if ($id)
            <div class="col-sm-2">
                <div class="form-group">
                    <label>ID</label>
                    <input type="text" class="form-control text-center" @if ($id) value={{ $id }} @else {{-- --}} @endif
                        disabled>
                </div>
            </div>
        @endif
        

        <div class="col-sm-4">
            <div class="form-group">
                <label>Primer nombre</label>
                <input type="text" class="form-control" @if ($id) value={{ $objeto->nombre_1 }}
                @else
                {{-- --}}
                @endif>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group">
                <label>Segundo nombre</label>
                <input type="text" class="form-control" @if ($id) value={{ $objeto->nombre_2 }}
                @else
                {{-- --}}
                @endif>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
            <div class="form-group">
                <label>Primer apellido</label>
                <input type="text" class="form-control" @if ($id) value={{ $objeto->apellido_1 }}
                @else
                {{-- --}}
                @endif>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group">
                <label>Segundo apellido</label>
                <input type="text" class="form-control" @if ($id) value={{ $objeto->apellido_2 }}
                @else
                {{-- --}}
                @endif>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group">
                <label>DNI</label>
                <input type="text" class="form-control" @if ($id) value={{ $objeto->dni }}
                @else
                {{-- --}}
                @endif>
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

    
    @if ($id)
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
    @endif
</form>