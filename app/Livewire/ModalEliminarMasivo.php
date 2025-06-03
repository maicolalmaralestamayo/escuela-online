<?php

namespace App\Livewire;

use Livewire\Component;

class ModalEliminarMasivo extends Component
{
    public function eliminarMasivo(){
        $this->dispatch('eliminarMasivo', $this->ids)->to('tabla');
    }
    
    public function render()
    {
        return view('livewire.modal-eliminar-masivo');
    }
}
