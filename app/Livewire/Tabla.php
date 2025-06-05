<?php

namespace App\Livewire;

use Livewire\Component;

class Tabla extends Component
{
    public $titulo;
    
    public $campos;
    public $llavesForaneas;
    public $modelo;
    public $modeloString;

    public $totalObjetos;//cantidad total de objetos
    public $objetosPaginados;//lista de objetos en la página ya obtenidos
    public $objetosPagina;//cantidad de objetos por página

    public $pagina;//número de la página mostrada
    public $totalPaginas;//número de la última página coincide con el total de paginas)

    protected $listeners = [
        'confirmarEliminarObjeto' => 'setTotalObjetos',
        'setPagina' => 'setPagina',
        'setTotalObjetos' => 'setTotalObjetos',
        'setMarcado' => 'desmarcar'
    ];

    public function setTotalObjetos(){
        $this->totalObjetos = $this->modeloString::count();
        if ($this->pagina >= $this->totalPaginas) {
            $this->pagina = $this->totalPaginas;
        }
        $this->paginar();
    }

    public function setObjetosPagina($objetos){
        if ($objetos >= 1) {
            $this->objetosPagina = $objetos;
            $this->paginar();
        }
    }

    public function setPagina($pagina)
    {
        if ($pagina >= 1 && $pagina <= $this->totalPaginas) {
            $this->pagina = $pagina;
            $this->paginar();
        }
    }

    public function paginar(){
        $this->totalObjetos = $this->modeloString::count();
        $this->totalPaginas = ceil($this->totalObjetos / $this->objetosPagina);
        if ($this->pagina > $this->totalPaginas) {
            $this->pagina = $this->totalPaginas;
        }
        $this->objetosPaginados = $this->modeloString::all()->forPage($this->pagina,$this->objetosPagina);
    }

    public function mount($titulo, $campos, $llavesForaneas, $modelo, $pagina, $objetosPagina)
    {
        $this->titulo = $titulo;
        $this->campos = $campos;
        $this->llavesForaneas = $llavesForaneas;
        $this->modelo = $modelo;

        $this->pagina = $pagina;
        $this->objetosPagina = $objetosPagina;
        
        $this->modeloString = 'App\\Models\\' . $modelo;
        $this->totalObjetos = $this->modeloString::count();
        
        $this->paginar();
    }

    public function render()
    {
        return view('livewire.tabla');
    }
}
