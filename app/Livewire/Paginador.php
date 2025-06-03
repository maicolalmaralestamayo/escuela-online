<?php

namespace App\Livewire;

use Livewire\Component;

class Paginador extends Component
{
    public $pagina;
    public $totalPaginas;

    public function setPagina($pagina){
        $this->dispatch('setPagina', $pagina)->to('tabla');
    }

    public function mount($pagina, $totalPaginas){
        $this->pagina = $pagina;
        $this->totalPaginas = $totalPaginas;
    }
    
    public function render()
    {
        return view('livewire.paginador');
    }
}
