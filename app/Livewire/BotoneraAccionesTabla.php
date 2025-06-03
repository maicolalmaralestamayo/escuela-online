<?php

namespace App\Livewire;

use Livewire\Component;

class BotoneraAccionesTabla extends Component
{
    public function eliminarMasivo(){
        $this->dispatch('eliminarMasivo')->to('modal-eliminar-masivo');
        $this->dispatch('eliminarMasivo')->to('modal-masivo-eliminado');
    }
    
    public function render()
    {
        return view('livewire.botonera-acciones-tabla');
    }
}
