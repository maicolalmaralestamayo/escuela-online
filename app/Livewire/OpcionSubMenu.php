<?php

namespace App\Livewire;

use Livewire\Component;

class OpcionSubMenu extends Component
{
    public $marcado;
    public $icono;
    public $titulo;

    protected $listeners = [
        'desmarcarOpcion' => 'desmarcarOpcion',
        'marcarOpcion' => 'marcarOpcion'
    ];

    public function marcar() {
        $this->dispatch('desmarcarOpcion')->to(OpcionSubMenu::class);
        $this->dispatch('marcarOpcion')->self();
    }

    public function marcarOpcion()
    {
        $this->marcado = true;
    }

    public function desmarcarOpcion()
    {
        $this->marcado = false;
    }

    public function mount($marcado, $icono, $titulo)
    {
        $this->marcado = $marcado;
        $this->icono = $icono;
        $this->titulo = $titulo;
    }
    
    public function render()
    {
        return view('livewire.opcion-sub-menu');
    }
}
