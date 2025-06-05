<?php

namespace App\Livewire;

use Livewire\Component;

class OpcionSubMenu extends Component
{
    public $marcado = false;//si está marcada o no la opción
    public $icono;//ícono de la opción
    public $titulo;//título de la opción
    public $tituloTablero;//título del tablero

    protected $listeners = [
        'marcar' => 'marcar',
        'desmarcar' => 'desmarcar'
    ];

    public function click(){
        $this->dispatch('desmarcar')->to(OpcionSubMenu::class);
        $this->dispatch('marcar')->self();
        $this->dispatch('setTitulo', $this->tituloTablero)->to(Tablero::class);
    }

    public function marcar(){
        $this->marcado = true;
    }
    
    public function desmarcar(){
        $this->marcado = false;
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