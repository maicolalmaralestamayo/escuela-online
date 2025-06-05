<?php

namespace App\Livewire;

use Livewire\Component;

class Tablero extends Component
{
    public $titulo;//título del tablero

    protected $listeners = [
        'setTitulo' => 'setTitulo'
    ];

    public function setTitulo($titulo){
        $this->titulo = $titulo;
        /* $this->refresh(); */
    }   

    public function mount($titulo){
        $this->titulo = $titulo;
    }
    
    public function render()
    {
        return view('livewire.tablero');
    }
}
