<?php

namespace App\Livewire;

use Livewire\Component;

class ModalInsertarObjeto extends Component
{
    public $modelo;
    public $id = null;

    protected $listeners = [
        'setFormulario',
    ];

    //OK
    public function solicitarInsertarObjeto(){
        $this->dispatch('insertar')->to('App\Livewire\Formulario' . $this->modelo);
    }

    //OK
    public function setFormulario($modelo, $id){
        $this->dispatch('inicializar', modelo: $this->modelo, id: null)->to('App\Livewire\Formulario' . $this->modelo);
    }

    public function render()
    {
        return view('livewire.modal-insertar-objeto');
    }
}