<?php

namespace App\Livewire;

use Livewire\Attributes\Prop;
use Livewire\Component;

class SubMenu extends Component
{
    public $opcionesMenu;
    public $id;

    public function mount($opcionesMenu, $id)
    {
        $this->opcionesMenu = $opcionesMenu;
        $this->id = $id;
    }

    public function render()
    {
        return view('livewire.sub-menu');
    }
}