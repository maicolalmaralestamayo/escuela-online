<?php

namespace App\Livewire;

use Livewire\Component;

class TableroDirectivos extends Component
{
    public $nombre;

    public function mount($nombre){
        $this->nombre;
    }
    
    public function render()
    {
        return view('livewire.tablero-directivos');
    }
}
