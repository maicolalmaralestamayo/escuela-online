<?php

namespace App\Livewire;

use Livewire\Component;

class ModalEliminarObjeto extends Component
{
    public $id;

    protected $listeners = [
        'eliminarObjeto' => 'actualizarId'
    ];

    public function actualizarId($id){
        $this->id = $id;
    }

    public function eliminarObjeto(){
        $this->dispatch('eliminarObjeto', $this->id)->to('tabla');
    }
    
    public function render()
    {
        return view('livewire.modal-eliminar-objeto');
    }
}
