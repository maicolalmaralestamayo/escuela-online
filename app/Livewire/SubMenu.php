<?php

namespace App\Livewire;

use Livewire\Component;

class SubMenu extends Component
{
    public $cabecera;//cabecera del submenú, es decir la opción que lo desplegará
    public $opciones;//opciones del submenú
    public $id;//identificador del submenú

    public function mount($cabecera, $opciones, $id)
    {
        $this->cabecera = $cabecera;
        $this->opciones = $opciones;
        $this->id = $id;
    }

    public function render()
    {
        return view('livewire.sub-menu');
    }
}