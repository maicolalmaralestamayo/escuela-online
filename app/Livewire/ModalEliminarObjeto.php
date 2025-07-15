<?php

namespace App\Livewire;

use Livewire\Component;

class ModalEliminarObjeto extends Component
{
    public $id;

    protected $listeners = [
        'solicitarEliminarObjeto'
    ];

    //OK
    public function solicitarEliminarObjeto($id){
        $this->id = $id;
    }

    //OK
    public function confirmarEliminarObjeto(){
        $this->dispatch('confirmarEliminarObjeto', idObjeto: $this->id)->to(Fila::class);
    }

    public function render()
    {
        return view('livewire.modal-eliminar-objeto');
    }
}