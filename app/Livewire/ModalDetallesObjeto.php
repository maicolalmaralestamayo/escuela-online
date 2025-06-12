<?php

namespace App\Livewire;

use Livewire\Component;

class ModalDetallesObjeto extends Component
{
    public $modelo;
    public $id;//si está null, es insertar. si está con id es actualizar

    protected $listeners = [
        'mount'
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

    public function mount($modelo='Usuario', $id=null){
        $this->modelo = $modelo;
        $this->id = $id;
    }

    public function render()
    {
        return view('livewire.modal-detalles-objeto');
    }
}
