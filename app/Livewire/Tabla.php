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

    public function cambiarObjetosPagina($objetosPagina)
    {
        $this->objetosPagina = $objetosPagina;
        $this->paginar($this->pagina, $objetosPagina);
    }

    public function paginar($pagina, $objetosPagina)
    {
        $this->objetosPaginados = $this->modeloString::all()->forPage($pagina, $objetosPagina);
        $this->dispatch('actualizarTotalPaginas', $this->totalPaginas)->to(Panel::class);
    }

    public function mount($campos, $llavesForaneas, $modelo, $pagina, $objetosPagina)
    {
        $this->campos = $campos;
        $this->llavesForaneas = $llavesForaneas;
        $this->modelo = $modelo;

        $this->modeloString = 'App\\Models\\' . $modelo;
        $this->totalObjetos = $this->modeloString::count();
        $this->totalPaginas = ceil($this->totalObjetos / $this->objetosPagina);

        $this->pagina = $pagina;
        $this->objetosPagina = $objetosPagina;
        $this->paginar($pagina, $objetosPagina);
    }

    public function render()
    {
        return view('livewire.tabla');
    }
}
