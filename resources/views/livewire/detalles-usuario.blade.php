<form>
    <div class="row">
        @if ($id)
        <div class="col-sm-2">
            <div class="form-group">
                <label for="id">ID</label>
                <input type="text" id="id" class="form-control text-center" @if ($id) value={{ $id }} @else {{-- --}} @endif
                    disabled>
            </div>
        </div>
        @endif


        <div class="col-sm-4">
            <div class="form-group">
                <label for="nombre_1">Primer nombre {{ $nombre_1 }}</label>
                {{-- <input type="text" class="form-control" wire:model="nombre_1" id="nombre_1"> --}}
                <input type="text" id="nombre_1" class="form-control" wire:model='nombre_1'>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group">
                <label for="nombre_2">Segundo nombre</label>
                <input type="text" id="nombre_2" class="form-control" @if ($id) value={{ $objeto->nombre_2 }}
                @else
                {{-- --}}
                @endif>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
            <div class="form-group">
                <label for="apellido_1">Primer apellido</label>
                <input type="text" id="apellido_1" class="form-control" @if ($id) value={{ $objeto->apellido_1 }}
                @else
                {{-- --}}
                @endif>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group">
                <label for="apellido_2">Segundo apellido</label>
                <input type="text" id="apellido_2" class="form-control" @if ($id) value={{ $objeto->apellido_2 }}
                @else
                {{-- --}}
                @endif>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group">
                <label for="dni">DNI</label>
                <input type="text" id="dni" class="form-control" @if ($id) value={{ $objeto->dni }}
                @else
                {{-- --}}
                @endif>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
            <div class="form-group">
                <label for="selectorGenero">Género</label>
                <select class="custom-select rounded" id="selectorGenero">
                    {{ $generos = 'App\\Models\\Genero'::all() }}
                    @foreach ($generos as $genero)
                        <option @if ($id && $genero->id == $objeto->genero_id)
                            selected
                        @endif>{{$genero->genero}}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="col-sm-8">
            <div class="form-group">
                <label for="observacion">Observación</label>
                <textarea id="observacion" class="form-control" rows="2">@if($id){{ $objeto->observacion }}@endif</textarea>
            </div>
        </div>
    </div>

    @if ($id)
    <div class="row">
        <div class="col-sm-4">
            <div class="form-group">
                <label for="created_at">Creado</label>
                <input id="created_at" type="text" class="form-control" @if ($id) value={{ $objeto->created_at }}
                @else
                {{-- --}}
                @endif disabled>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="form-group">
                <label for="updated_at">Actualizado</label>
                <input id="updated_at" type="text" class="form-control" @if ($id) value={{ $objeto->updated_at }}
                @else
                {{-- --}}
                @endif disabled>
            </div>
        </div>
    </div>
    @endif
</form>