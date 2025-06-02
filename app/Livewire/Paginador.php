<?php

namespace App\Livewire;

use Livewire\Component;

class Paginador extends Component
{
    public $pagina = 1;//número de la página mostrada
    public $totalPaginas;//número de la última página

    public function mount($pagina, $totalPaginas){
        $this->pagina = $pagina;
        $this->totalPaginas = $totalPaginas;
    }
    
    public function render()
    {
        return view('livewire.paginador');
    }
}
