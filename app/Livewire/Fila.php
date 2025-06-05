<?php

namespace App\Livewire;

use Livewire\Component;

class Fila extends Component
{
    public $campos;
    public $modelo;
    public $modeloString;
    public $objeto;
    public $estado;
    protected $listeners = [
        'confirmarEliminarObjeto' => 'confirmarEliminarObjeto',
        'confirmarEliminarMasivo' => 'confirmarEliminarMasivo',
        'setEstado' => 'setEstado'
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

    public function confirmarEliminarMasivo()
    {
        if ($this->estado == true) {
            $objeto = $this->modeloString::find($this->objeto->id);
            $objeto->delete();

            $this->dispatch('setTotalObjetos')->to(Tabla::class);
        }
    }

    public function setEstado($estado){
        $this->estado = $estado;
        if (!$this->estado) {
            $this->dispatch('setEstadoCabecera', false)->to(Tabla::class);
        }
    }

    public function mount($campos, $modelo, $modeloString, $objeto, $estado)
    {
        $this->campos = $campos;
        $this->modelo = $modelo;
        $this->modeloString = $modeloString;
        $this->objeto = $objeto;
        $this->estado = $estado;
    }

    public function render()
    {
        return view('livewire.fila');
    }
}
