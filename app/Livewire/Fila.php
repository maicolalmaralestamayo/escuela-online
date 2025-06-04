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
    public $estado = false;

    public function invertirEstado(){
        $this->estado = !$this->estado;
    }
    
    protected $listeners = [
        'setEstadoGeneral' => 'setEstadoGeneral',
        'eliminarMasivo' => 'eliminarMasivo'
    ];

    public function eliminarMasivo()
    {
        if ($this->estado == true) {
            $objeto = $this->modeloString::find($this->id);
            $objeto->delete();

            $this->dispatch('setTotalObjetos')->to('tabla');
        }
    }

    public function setEstadoGeneral($estado){
        $this->estado = $estado;
    }

    /* public function setestadoIndividual($estado){
        $this->estado = $estado;
        if ($this->estado == false) {
            $this->dispatch('setDesestadoGeneral')->to('fila-cabecera');
        }
    } */

    public function mount($id, $campos, $llavesForaneas, $modelo, $modeloString, $objeto)
    {
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
