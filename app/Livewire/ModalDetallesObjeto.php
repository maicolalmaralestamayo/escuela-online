<?php

namespace App\Livewire;

use Livewire\Component;

class ModalDetallesObjeto extends Component
{
    public $modelo;
    public $id;

    protected $listeners = [
        'verDetallesObjeto'
    ];

    //OK
    public function solicitarActualizarObjeto(){
        $this->dispatch('actualizar', $this->modelo, $this->id)->to(FormularioUsuario::class);
    }

    //OK
    public function solicitarEliminarObjeto(){
        $this->dispatch('solicitarEliminarObjeto', $this->id)->to(ModalEliminarObjeto::class);
    }

    //OK
    public function verDetallesObjeto($modelo=null, $id=null){
        $this->modelo = $modelo;
        $this->id = $id;
    }

    public function render()
    {
        return view('livewire.modal-detalles-objeto');
    }
}
