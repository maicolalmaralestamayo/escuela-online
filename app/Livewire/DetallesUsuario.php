<?php

namespace App\Livewire;

use App\Models\Usuario;
use Livewire\Component;

class DetallesUsuario extends Component
{
    public $objeto;
    public $id;

    public function mount($id){
        $this->id = $id;

        if ($id) {
            $this->objeto = Usuario::find($id);
        }
    }
    
    public function render()
    {
        return view('livewire.detalles-usuario');
    }
}