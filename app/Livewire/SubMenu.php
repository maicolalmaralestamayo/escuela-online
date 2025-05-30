<?php

namespace App\Livewire;

use Livewire\Component;

class SubMenu extends Component
{
    public $opcionesMenu;

    public function mount($opcionesMenu)
    {
        $this->opcionesMenu = $opcionesMenu;
    }

    public function render()
    {
        return view('livewire.sub-menu');
    }
}