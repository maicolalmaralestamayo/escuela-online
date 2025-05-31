<?php

namespace App\Livewire;

use Livewire\Component;

class Tabla extends Component
{
    public $campos;
    public $llavesForaneas;
    public $modelo;
    public $modeloString;

    public $pagina = 1;
    public $totalPaginas;
    public $primeraPagina;
    public $ultimaPagina;

    public $coleccion;
    public $totalObjetos;

    public $objetosPaginados;
    public $objetosPagina;

    public function irPagina($pagina)
    {
        if ($pagina >= 1 && $pagina <= $this->ultimaPagina) {
            $this->pagina = $pagina;
            $this->paginar($pagina, $this->objetosPagina);
        }
    }

    public function cambiarObjetosPagina($objetosPagina)
    {
        $this->objetosPagina = $objetosPagina;
        $this->paginar($this->pagina, $objetosPagina);
    }

    public function paginar($pagina, $objetosPagina)
    {
        $this->objetosPaginados = $this->modeloString::all()->forPage($pagina, $objetosPagina);

        $this->pagina = $pagina;
        $this->objetosPagina = $objetosPagina;

        $this->primeraPagina = 1;
        $this->ultimaPagina = ceil($this->totalObjetos / $this->objetosPagina);
    }

    public function mount($campos, $llavesForaneas, $modelo)
    {
        $this->campos = $campos;
        $this->llavesForaneas = $llavesForaneas;
        $this->modelo = $modelo;

        $this->modeloString = 'App\\Models\\' . $modelo;
        $this->totalObjetos = $this->modeloString::count();

        $this->paginar(1, 5);
    }

    public function render()
    {
        return view('livewire.tabla');
    }
}
