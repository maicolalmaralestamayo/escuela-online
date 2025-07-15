<?php

namespace App\Livewire;

use Livewire\Component;

class ModalEliminarObjeto extends Component
{
    public $modelo;
    public $id;

    protected $listeners = [
        'solicitarEliminarObjeto'
    ];

    //OK
    public function solicitarEliminarObjeto($modelo, $id){
        $this->modelo = $modelo;
        $this->id = $id;
    }

    //OK
    public function eliminarFila(){
        $this->dispatch('eliminarFila', modelo: $this->modelo, id: $this->id)->to(Fila::class);
    }

    public function render()
    {
        return view('livewire.modal-eliminar-objeto');
    }
}