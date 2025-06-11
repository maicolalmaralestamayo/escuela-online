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
        'confirmarEliminarObjeto',
        'confirmarEliminarMasivo',
        'setEstadoFila',
        'actualizar'
    ];

    //OK
    public function setEstadoFila($estado){
        $this->estado = $estado;
    }

    public function setEstado($estado){
        $this->estado = $estado;
    }

    //OK
    public function solicitarEliminarObjeto(){
        $this->dispatch('solicitarEliminarObjeto', $this->objeto->id)->to(ModalEliminarObjeto::class);
    }

    //OK
    public function confirmarEliminarObjeto($idObjeto){
        if ($this->objeto->id == $idObjeto) {
            $objeto = $this->modeloString::find($idObjeto);
            $objeto->delete();
            $this->dispatch('paginar')->to(Tabla::class);
        }
    }

    //OK
    public function confirmarEliminarMasivo()
    {
        if ($this->estado == true) {
            $objeto = $this->modeloString::find($this->objeto->id);
            $objeto->delete();
        }
    }

    //OK
    public function actualizar(){
        $this->dispatch('refresh');
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