<?php

namespace App\Livewire;

use Livewire\Component;

class Paginador extends Component
    {
        public $pagina;//número de la página mostrada
        public $totalPaginas;//número de la última página

        public function actualizarPagina($pagina){
            $this->dispatch('actualizarPagina', $pagina)->to(Panel::class);
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
