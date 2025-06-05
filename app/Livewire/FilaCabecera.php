<?php

namespace App\Livewire;

use Livewire\Component;

class FilaCabecera extends Component
{
    public $campos;
    public $estado;

    protected $listeners = [
        'solicitarDesmarcarCabecera' => 'desmarcarCabecera'
    ];

    public function desmarcarCabecera(){
        $this->estado = false;
    }

    public function mount($campos, $estado)
    {
        $this->campos = $campos;
        $this->estado = $estado;
    }

    public function setEstado($estado){
        $this->estado = $estado;
        $this->dispatch('enviarEstado', $estado)->to(Tabla::class);
    }
    
    public function render()
    {
        return view('livewire.fila-cabecera');
    }
}
