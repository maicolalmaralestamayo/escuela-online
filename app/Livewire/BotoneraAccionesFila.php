<?php

namespace App\Livewire;

use Livewire\Component;

class BotoneraAccionesFila extends Component
{
    public $modelo;
    public $id;

    public function eliminarObjeto(){
        $this->dispatch('eliminarObjeto', $this->id)->to('modal-eliminar-objeto');
        $this->dispatch('eliminarObjeto', $this->id)->to('modal-objeto-eliminado');
    }

    public function mount($modelo, $id){
        $this->modelo = $modelo;
        $this->id = $id;
    }
    
    public function render()
    {
        return view('livewire.botonera-acciones-fila');
    }
}
