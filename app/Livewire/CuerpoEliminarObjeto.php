<?php

namespace App\Livewire;

use Livewire\Component;

class CuerpoEliminarObjeto extends Component
{
    //OK
    public function mount($modelo = null, $id = null)
    {
        $this->modelo = $modelo;
        $this->id = $id;
    }
    
    public function render()
    {
        return view('livewire.cuerpo-eliminar-objeto');
    }
}