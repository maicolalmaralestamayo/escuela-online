<?php

namespace App\Livewire;

use Livewire\Component;

class Submenu extends Component
{
    public $tituloSubmenu;
    public $iconoSubmenu;
    public $opcionesSubmenu;

    public function mount($tituloSubmenu, $iconoSubmenu, $opcionesSubmenu){
        $this->tituloSubmenu = $tituloSubmenu;
        $this->iconoSubmenu = $iconoSubmenu;
        $this->opcionesSubmenu = $opcionesSubmenu;
    }
    
    public function render()
    {
        return view('livewire.submenu');
    }
}
