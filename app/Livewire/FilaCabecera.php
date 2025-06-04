<?php

namespace App\Livewire;

use Livewire\Component;

class FilaCabecera extends Component
{
    public $modelo;
    public $modeloString;
    public $campos;
    public $estado=false;

    protected $listeners = [
        'setDesmarcadoGeneral' => 'setDesmarcadoGeneral'
    ];    

    public function invertirEstado(){
        $this->estado = !$this->estado;
        $this->dispatch('setEstadoGeneral', $this->estado)->to('fila');
    }    

    public function mount($modelo, $modeloString){
        $this->modelo = $modelo;
        $this->modeloString = $modeloString;

        $this->campos = $this->modeloString::vistaCampos();
    }
    
    public function render()
    {
        return view('livewire.fila-cabecera');
    }
}
