<?php

namespace App\Livewire;

use Livewire\Component;

class ModalObjetoEliminado extends Component
{
    public $id;

     protected $listeners = [
        'eliminarObjeto' => 'actualizarId'
    ];

    public function actualizarId($id){
        $this->id = $id;
    }
    
    public function render()
    {
        return view('livewire.modal-objeto-eliminado');
    }
}
