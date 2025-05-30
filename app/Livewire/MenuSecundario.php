<?php

namespace App\Livewire;

use Livewire\Component;

class MenuSecundario extends Component
{
    public $nombreAplicacion;
    public $opcionesMenu;

    public function mount($nombreAplicacion, $opcionesMenu)
    {
        $this->nombreAplicacion = $nombreAplicacion;
        $this->opcionesMenu = $opcionesMenu;
    }
    
    public function render()
    {
        return view('livewire.menu-secundario');
    }
}