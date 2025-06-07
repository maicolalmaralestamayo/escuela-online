<?php

namespace App\Livewire;

use Livewire\Component;

class NombreAplicacion extends Component
{
    public $nombreAplicacion;
    public $logoAplicacion;

    public function mount($nombreAplicacion, $logoAplicacion){
        $this->nombreAplicacion = $nombreAplicacion;
        $this->logoAplicacion = $logoAplicacion;
    }
    
    public function render()
    {
        return view('livewire.nombre-aplicacion');
    }
}
