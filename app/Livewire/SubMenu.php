<?php

namespace App\Livewire;

use Livewire\Component;

class SubMenu extends Component
{
    public $cabecera;//cabecera del submenú, es decir la opción que lo desplegará
    public $opciones;//opciones del submenú
    public $nombreSubMenu;//nombre dek submenu que servirá para identificarlo

    public function mount($cabecera, $opciones, $nombreSubMenu)
    {
        $this->cabecera = $cabecera;
        $this->opciones = $opciones;
        $this->nombreSubMenu = $nombreSubMenu;
    }

    public function render()
    {
        return view('livewire.sub-menu');
    }
}