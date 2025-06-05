<?php

namespace App\Livewire;

use Livewire\Component;

class ModalEliminarObjeto extends Component
{
    public $idObjeto;
    
    protected $listeners = [
        'solicitarEliminarObjeto' => 'solicitarEliminarObjeto'
    ];

    public function solicitarEliminarObjeto($idObjeto){
        $this->idObjeto = $idObjeto;
    }

    public function confirmarEliminarObjeto(){
        $this->dispatch('confirmarEliminarObjeto', $this->idObjeto)->to(Fila::class);
    }
    
    public function render()
    {
        return view('livewire.modal-eliminar-objeto');
    }
}
