<?php

namespace App\Livewire;

use Livewire\Component;

class OpcionSubMenu extends Component
{
    public $icono;//ícono de la opción
    public $titulo;//título de la opción
    public $tituloTablero;//título del tablero
    public $estado=false;//estado, si está marcada la opción o no

    protected $listeners = [
        'marcarOpcion' => 'marcarOpcion',
        'desmarcarOpcion' => 'desmarcarOpcion'
    ];

    public function marcarOpcion(){
        $this->estado = true;
    }

    public function desmarcarOpcion(){
        $this->estado = false;
    }

    public function click(){
        $this->estado = true;
        $this->dispatch('desmarcarOpcion')->to(OpcionSubMenu::class);
        $this->dispatch('marcarOpcion')->self();
    }

    public function mount($icono, $titulo, $tituloTablero)
    {
        $this->icono = $icono;
        $this->titulo = $titulo;
        $this->tituloTablero = $tituloTablero;
    }
    
    public function render()
    {
        return view('livewire.opcion-sub-menu');
    }
}