<?php

namespace App\Livewire;

use Livewire\Component;

class Panel extends Component
{
    public $titulo;

    public $pagina = 1;//número de la página mostrada
    public $objetosPagina = 5;//cantidad de objetos por página
    public $totalPaginas;//total de págionas (coincide con el número de la última página)

    protected $listeners = [
        'informarTotalPaginas' => 'actualizarTotalPaginas'
    ];

    public function actualizarTotalPaginas($totalPaginas){
        $this->totalPaginas = $totalPaginas;
    }
    
    public function mount($titulo){
        $this->titulo = $titulo;
    }
    
    public function render()
    {
        return view('livewire.panel');
    }
}
