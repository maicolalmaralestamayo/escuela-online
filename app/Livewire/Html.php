<?php

namespace App\Livewire;

use Livewire\Component;

class Html extends Component
{
    public $titulo='Tablero Principal';

    protected $listeners = [
        'setTablero' => 'setTablero'
    ];
    
    public function setTablero ($titulo){
        $this->titulo = $titulo;
    }

    public function render()
    {
        return view('livewire.html');
    }
}