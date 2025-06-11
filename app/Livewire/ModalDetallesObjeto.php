<?php

namespace App\Livewire;

use Livewire\Component;

class ModalDetallesObjeto extends Component
{
    public $modelo='Usuario';

    protected $listeners = [
        'setModelo'
    ];

    public function setModelo($modelo){
        $this->modelo = $modelo;
    }

    public function render()
    {
        return view('livewire.modal-detalles-objeto');
    }
}
