<?php

namespace App\Livewire;

use Livewire\Component;

class ModalInsertarObjeto extends Component
{
    public $modelo;
    public $id;

    protected $listeners = [
        'solicitarInsertarObjeto',
        'verInsertarObjeto'
    ];

    //OK
    public function solicitarInsertarObjeto(){
        $this->dispatch('insertar')->to('App\Livewire\Formulario' . $this->modelo);
    }

    //OK
    public function verInsertarObjeto($modelo, $id){
        $this->modelo = $modelo;
        $this->id = $id;
    }

    public function render()
    {
        return view('livewire.modal-insertar-objeto');
    }
}