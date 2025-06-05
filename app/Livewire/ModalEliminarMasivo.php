<?php

namespace App\Livewire;

use Livewire\Component;

class ModalEliminarMasivo extends Component
{
    public function confirmarEliminarMasivo(){
        $this->dispatch('confirmarEliminarMasivo')->to(Fila::class);
    }
    
    public function render()
    {
        return view('livewire.modal-eliminar-masivo');
    }
}
