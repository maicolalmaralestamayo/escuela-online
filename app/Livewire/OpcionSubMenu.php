<?php

namespace App\Livewire;

use Livewire\Component;

class OpcionSubMenu extends Component
{
    public $marcado = false;//si está marcada o no
    public $icono;//ícono de la opción
    public $titulo;//título de la opción
    public $id;//identificador de la opción
    public $tablero;//tablero que mostrará

    protected $listeners = [
        'marcar' => 'marcar',
        'desmarcar' => 'desmarcar'
    ];

    public function click(){
        $this->dispatch('desmarcar')->to(OpcionSubMenu::class);
        $this->dispatch('marcar')->self();
        $this->dispatch('tablero', area: $this->tablero)->to(tablero::class);
    }

    public function marcar(){
        $this->marcado = true;
    }
    
    public function desmarcar(){
        $this->marcado = false;
    }

    public function mount($icono, $titulo, $id, $tablero)
    {
        $this->icono = $icono;
        $this->titulo = $titulo;
        $this->id = $id;
        $this->tablero = $tablero;
    }
    
    public function render()
    {
        return view('livewire.opcion-sub-menu');
    }
}