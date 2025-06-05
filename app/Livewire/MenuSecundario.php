<?php

namespace App\Livewire;

use Livewire\Component;

class MenuSecundario extends Component
{
    public $nombreAplicacion = 'Escuela Online';

    public function mount($nombreAplicacion)
    {
       $this->nombreAplicacion = $nombreAplicacion;
    }

    public function render()
    {
        return view('livewire.menu-secundario');
    }
}
