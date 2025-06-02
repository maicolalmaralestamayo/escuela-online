<?php

namespace App\Livewire;

use Livewire\Component;

class Fila extends Component
{
    public $id;
    public $campos;
    public $llavesForaneas;
    public $modelo;
    public $modeloString;
    public $objeto;
    public $marcada = false;

    public function mount($id, $campos, $llavesForaneas, $modelo, $modeloString, $objeto){
        $this->id = $id;
        $this->campos = $campos;
        $this->llavesForaneas = $llavesForaneas;
        $this->modelo = $modelo;
        $this->modeloString = $modeloString;
        $this->objeto = $objeto;
    }
    
    public function render()
    {
        return view('livewire.fila');
    }
}
