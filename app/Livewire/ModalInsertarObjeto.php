<?php

namespace App\Livewire;

use Livewire\Component;

class ModalInsertarObjeto extends Component
{
    public $modelo;
    public $id;

    //OK
    public function insertar(){
        $this->dispatch('insertar', $this->modelo)->to('App\\Livewire\\Formulario' . $this->modelo);
    }

    public function render()
    {
        return view('livewire.modal-insertar-objeto');
    }
}