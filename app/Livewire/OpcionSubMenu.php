<?php

namespace App\Livewire;

use Livewire\Attributes\On;
use Livewire\Component;

class OpcionSubMenu extends Component
{
    public $marcado = false;
    public $icono;
    public $titulo;
    public $id;
    public $areaTrabajo;

    public function seleccionar(){
        $this->dispatch('desmarcar')->to(OpcionSubMenu::class);
        $this->dispatch('marcar')->self();
        $this->dispatch('areaTrabajo', area: $this->areaTrabajo)->to(AreaTrabajo::class);
    }

    #[On('marcar')]
    public function marcar(){
        $this->marcado = true;
    }
    
    #[On('desmarcar')]
    public function desmarcar(){
        $this->marcado = false;
    }

    public function mount($icono, $titulo, $id, $areaTrabajo)
    {
        $this->icono = $icono;
        $this->titulo = $titulo;
        $this->id = $id;
        $this->areaTrabajo = $areaTrabajo;
    }
    
    public function render()
    {
        return view('livewire.opcion-sub-menu');
    }
}