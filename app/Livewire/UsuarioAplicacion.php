<?php

namespace App\Livewire;

use Livewire\Component;

class UsuarioAplicacion extends Component
{
    public $nombreUsuario;
    public $fotoUsuario;

    public function mount($nombreUsuario, $fotoUsuario){
        $this->nombreUsuario = $nombreUsuario;
        $this->fotoUsuario = $fotoUsuario;
    }
    
    public function render()
    {
        return view('livewire.usuario-aplicacion');
    }
}
