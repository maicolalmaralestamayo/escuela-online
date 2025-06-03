<?php

namespace App\Livewire;

use Livewire\Component;

class ModalEliminarMasivo extends Component
{
    public $estado = false;

    protected $listeners = [
        'eliminarMasivo' => 'eliminarMasivo'
    ];

    public function eliminarMasivo(){
        $this->estado = true;
        $this->dispatch('eliminarMasivo', $this->ids)->to('tabla');
    }
    
    public function render()
    {
        return view('livewire.modal-eliminar-masivo');
    }
}
