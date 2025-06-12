<?php

namespace App\Livewire;

use App\Models\Usuario;
use Livewire\Component;

class DetallesUsuario extends Component
{
    public $objeto;
    public $id;
    public $nombre_1;

    public function updatedNombre_1()
    {
        // Solo sirve para forzar que Livewire sepa que debe refrescar el DOM
    }


    public function mount($id)
    {
        $this->id = $id;

        if ($id) {
            $this->objeto = Usuario::find($id);
            $this->nombre_1 = $this->objeto->nombre_1;
        }
    }

    public function render()
    {
        return view('livewire.detalles-usuario');
    }
}
