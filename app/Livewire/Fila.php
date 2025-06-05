<?php

namespace App\Livewire;

use Livewire\Component;

class Fila extends Component
{
    public $campos;
    public $llavesForaneas;
    public $modelo;
    public $modeloString;
    public $objeto;
    public $estado = false;
    protected $listeners = [
        'confirmarEliminarObjeto' => 'confirmarEliminarObjeto'
    ];

    public function solicitarEliminarObjeto(){
        $this->dispatch('solicitarEliminarObjeto', $this->objeto->id)->to(ModalEliminarObjeto::class);
    }

    public function confirmarEliminarObjeto($idObjeto){
        if ($this->objeto->id == $idObjeto) {
            $objeto = $this->modeloString::find($idObjeto);
            $objeto->delete();
            $this->dispatch('confirmarEliminarObjeto', $this->objeto->id)->to(Tabla::class);
        }
    }
    
    public function invertirEstado(){
        $this->estado = !$this->estado;
    }
    
    public function eliminarMasivo()
    {
        if ($this->estado == true) {
            $objeto = $this->modeloString::find($this->objeto->id);
            $objeto->delete();

            $this->dispatch('setTotalObjetos')->to('tabla');
        }
    }

    public function mount($campos, $llavesForaneas, $modelo, $modeloString, $objeto)
    {
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
