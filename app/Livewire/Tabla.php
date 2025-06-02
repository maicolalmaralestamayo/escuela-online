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
        'eliminarObjeto' => 'eliminarObjeto',
        'navegarPagina' => 'navegarPagina'
    ];

    public function eliminarObjeto($id){
        $objeto = $this->modeloString::find($id);
        $objeto->delete();
        $this->paginar($this->pagina, $this->objetosPagina, $this->totalObjetos);
    }

    public function actualizarObjetosPagina($objetos){
        if ($objetos >= 1) {
            $this->objetosPagina = $objetos;
            $this->totalPaginas = ceil($this->totalObjetos / $objetos);
            $this->paginar($this->pagina, $objetos, $this->totalObjetos);
        }
    }

    public function paginar($pagina, $objetosPagina, $totalObjetos){
        $this->totalPaginas = ceil($totalObjetos / $objetosPagina);
        $this->objetosPaginados = $this->modeloString::all()->forPage($pagina,$objetosPagina);
    }

    public function navegarPagina($pagina)
    {
        if ($pagina >= 1 && $pagina <= $this->totalPaginas) {
            $this->pagina = $pagina;
            $this->paginar($pagina, $this->objetosPagina, $this->totalObjetos);
        }
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
        
        $this->paginar($pagina, $objetosPagina, $this->totalObjetos);
    }

    public function render()
    {
        return view('livewire.tabla');
    }
}
