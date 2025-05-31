<?php

namespace App\Livewire;

use App\Models\Genero;
use Livewire\Component;

class Tabla extends Component
{
    public $columnas;
    public $modelo;

    public $pagina=1;
    public $totalPaginas;
    public $primeraPagina;
    public $ultimaPagina;

    public $datosTotales;
    public $collectionSize;
    public $datosMostrar;
    public $filas;

    public function obtenerDatos($pagina, $filas){
        $this->datosMostrar = $this->datosTotales->forPage($pagina, $filas);
        
        $this->pagina = $pagina;
        $this->filas = $filas;
        
        $this->primeraPagina = 1;
        $this->ultimaPagina = ceil($this->collectionSize/$this->filas);
    }

    public function mount($columnas, $modelo){
        $this->columnas = $columnas;
        $this->modelo = 'App\\Models\\'.$modelo;

        $this->datosTotales = $this->modelo::all();
        $this->collectionSize = $this->datosTotales->count();

        $this->obtenerDatos(1, 5);
    }
    
    public function render()
    {
        return view('livewire.tabla');
    }
}
