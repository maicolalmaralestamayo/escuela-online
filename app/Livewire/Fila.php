<?php

namespace App\Livewire;

use Livewire\Component;

class Fila extends Component
{
    public $campos;
    public $llavesForaneas;
    public $modelo;
    public $objeto;

    public function mount($campos, $llavesForaneas, $modelo, $objeto){
        $this->campos = $campos;
        $this->llavesForaneas = $llavesForaneas;
        $this->modelo = $modelo;
        $this->objeto = $objeto;
    }
    
    public function render()
    {
        return view('livewire.fila');
    }
}
