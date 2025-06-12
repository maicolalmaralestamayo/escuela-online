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
    public function solicitarEliminarObjeto(){
        $this->dispatch('solicitarEliminarObjeto', $this->id)->to(ModalEliminarObjeto::class);
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
