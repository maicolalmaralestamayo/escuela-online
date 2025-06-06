<?php

namespace App\Livewire;

use Livewire\Component;

class OpcionSubMenu extends Component
{
    public $icono;//ícono de la opción
    public $titulo;//título de la opción
    public $tituloTablero;//título del tablero
    public $codigoTablero;//código para saer cuál renderizar
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

        $this->dispatch('setTablero', titulo: $this->tituloTablero)->to(Html::class);
    }

    public function mount($icono, $titulo, $tituloTablero, $codigoTablero)
    {
        $this->icono = $icono;
        $this->titulo = $titulo;
        $this->tituloTablero = $tituloTablero;
        $this->codigoTablero = $codigoTablero;
    }
    
    public function render()
    {
        return view('livewire.opcion-sub-menu');
    }
}