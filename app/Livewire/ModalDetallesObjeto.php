<?php

namespace App\Livewire;

use Livewire\Component;

class ModalDetallesObjeto extends Component
{
    public $modelo;
    public $id;//si está null, es insertar; si tiene un valor, es actualizar

    protected $listeners = [
        'setFormulario'
    ];

    //OK
    public function solicitarActualizarObjeto(){
        $this->dispatch('actualizar', $this->id)->to(FormularioUsuario::class);
    }

    //OK
    public function solicitarEliminarObjeto(){
        $this->dispatch('solicitarEliminarObjeto', $this->id)->to(ModalEliminarObjeto::class);
    }

    //OK
    public function solicitarInsertarObjeto(){
        $this->dispatch('insertar')->to(FormularioUsuario::class);
    }

    //OK
    public function setFormulario($modelo, $id){
        $this->modelo = $modelo;
        $this->id = $id;
    }

    public function render()
    {
        return view('livewire.modal-detalles-objeto');
    }
}
