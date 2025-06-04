<input type="checkbox" wire:click="invertirEstado()" @if ($estado)
    checked
@endif> {{$estado}}