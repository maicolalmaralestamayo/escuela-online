<?php

namespace App\Livewire;

use Livewire\Component;

class Menu extends Component
{
    public $tituloMenu;

    public function mount($tituloMenu){
        $this->tituloMenu = $tituloMenu;
    }

    public function render()
    {
        return view('livewire.menu');
    }
}
