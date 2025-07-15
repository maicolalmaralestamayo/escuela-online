<?php

namespace App\Livewire;

use Livewire\Component;

class ModalDetallesObjeto extends Component
{
    public $modelo;
    public $id;

    protected $listeners = [
        'verDetallesObjeto'
    ];

    //OK
    public function solicitarActualizarObjeto(){
        $this->dispatch('actualizar', $this->modelo, $this->id)->to('App\\Livewire\\Formulario' . $this->modelo);
    }

    //OK
    public function verDetallesObjeto($modelo, $id){
        $this->modelo = $modelo;
        $this->id = $id;
    }

    //OK
    public function eliminar(){
        $this->dispatch('eliminar')->to('App\\Livewire\\Formulario' . $this->modelo);
    }

    public function render()
    {
        return view('livewire.modal-detalles-objeto');
    }
}