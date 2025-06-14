<?php

namespace App\Livewire;

use Livewire\Component;

class ModalInsertarObjeto extends Component
{
    public $modelo;

    protected $listeners = [
        'mount',
    ];

    //OK
    public function solicitarInsertarObjeto(){
        $this->dispatch('insertar')->to('App\Livewire\Formulario' . $this->modelo);
    }

    public function mount($modelo=null){
        $this->modelo = $modelo;
    }

    public function render()
    {
        return view('livewire.modal-insertar-objeto');
    }
}