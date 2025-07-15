<?php

namespace App\Livewire;

use Livewire\Component;

class Fila extends Component
{
    public $campos;
    public $modelo;
    public $modeloString;
    public $objeto;
    public $estado;

    protected $listeners = [
        'eliminarFila',
        'eliminarFila2',
        'eliminarMasivo',
        'setEstadoFila',
        'actualizar'
    ];

    //OK
    public function setEstadoFila($estado){
        $this->estado = $estado;
    }

    public function setEstado($estado){
        $this->estado = $estado;
    }

    //OK
    public function eliminarFila(){
        $this->objeto->delete();
        $this->dispatch('paginar')->to(Tabla::class);
    }

    //OK
    public function eliminarFila2($id){
        if ($id == $this->objeto->id) {
            $this->eliminarFila();
        }
    }

    //OK
    public function eliminarMasivo()
    {
        if ($this->estado == true) {
            $this->eliminarFila();
        }
    }

    //OK
    public function actualizar(){
        $this->dispatch('refresh');
    }

    //OK
    public function verDetallesObjeto(){
        $this->dispatch('consultar', modelo: $this->modelo, id: $this->objeto->id)->to('App\\Livewire\\Formulario' . $this->modelo);
    }

    public function mount($campos, $modelo, $modeloString, $objeto, $estado)
    {
        $this->campos = $campos;
        $this->modelo = $modelo;
        $this->modeloString = $modeloString;
        $this->objeto = $objeto;
        $this->estado = $estado;
    }

    public function render()
    {
        return view('livewire.fila');
    }
}