<?php

namespace App\Livewire;

use Livewire\Component;

class Tabla extends Component
{
    public $campos;
    public $llavesForaneas;
    public $modelo;
    public $modeloString;

    public $totalObjetos;//cantidad total de objetos
    public $objetosPaginados;//lista de objetos en la página ya obtenidos
    public $objetosPagina;//cantidad de objetos por página

    public $pagina;//número de la página mostrada
    public $totalPaginas;//número de la última página coincide con el total de paginas)

    public function navegarPagina($pagina)
    {
        if ($pagina >= 1 && $pagina <= $this->totalPaginas) {
            $this->pagina = $pagina;
            $this->objetosPaginados = $this->modeloString::all()->forPage($pagina, $this->objetosPagina);
        }
    }

    public function mount($campos, $llavesForaneas, $modelo, $pagina, $objetosPagina)
    {
        $this->campos = $campos;
        $this->llavesForaneas = $llavesForaneas;
        $this->modelo = $modelo;

        $this->pagina = $pagina;
        $this->objetosPagina = $objetosPagina;
        
        $this->modeloString = 'App\\Models\\' . $modelo;
        $this->totalObjetos = $this->modeloString::count();
        $this->totalPaginas = ceil($this->totalObjetos / $objetosPagina);
        
        $this->navegarPagina($pagina);
    }

    public function render()
    {
        return view('livewire.tabla');
    }
}
