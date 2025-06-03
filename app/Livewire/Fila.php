<?php

namespace App\Livewire;

use Livewire\Component;

class Fila extends Component
{
    public $id;
    public $campos;
    public $llavesForaneas;
    public $modelo;
    public $modeloString;
    public $objeto;
    public $marcado = false;

    protected $listeners = [
        'actualizarMarcado' => 'actualizarMarcado',
        'eliminarMasivo' => 'eliminarMasivo'
    ];

    public function eliminarMasivo()
    {
        if ($this->marcado == true) {
            $objeto = $this->modeloString::find($this->id);
            $objeto->delete();

            $this->dispatch('actualizarTotalObjetos')->to('tabla');
        }
    }

    public function actualizarMarcado($estado)
    {
        $this->marcado = $estado;
    }

    public function mount($id, $campos, $llavesForaneas, $modelo, $modeloString, $objeto)
    {
        $this->id = $id;
        $this->campos = $campos;
        $this->llavesForaneas = $llavesForaneas;
        $this->modelo = $modelo;
        $this->modeloString = $modeloString;
        $this->objeto = $objeto;
    }

    public function render()
    {
        return view('livewire.fila');
    }
}
