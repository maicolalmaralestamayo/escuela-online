<?php

namespace App\Livewire;

use Livewire\Component;

class Tabla extends Component
{
    public $columnas;
    public $llavesForaneas;
    public $modelo;

    public $pagina = 1;
    public $totalPaginas;
    public $primeraPagina;
    public $ultimaPagina;

    public $datosTotales;
    public $cantidadDatos;
    public $datosMostrar;
    public $filas;

    protected function reglas()
    {
        return [
            'filas'   => 'required|integer|min:1',
            'paginas' => 'required|integer|min:1|max:' . $this->ultimaPagina,
        ];
    }

    public function irPagina($pagina)
    {
        if ($pagina >= 1 && $pagina <= $this->ultimaPagina) {
            $this->pagina = $pagina;
            $this->obtenerDatos($pagina, $this->filas);
        }
    }

    public function cambiarFilas($filas)
    {
        $this->filas = $filas;
        $this->obtenerDatos($this->pagina, $filas);
    }

    public function obtenerDatos($pagina, $filas)
    {
        $this->datosMostrar = $this->datosTotales->forPage($pagina, $filas);

        $this->pagina = $pagina;
        $this->filas = $filas;

        $this->primeraPagina = 1;
        $this->ultimaPagina = ceil($this->cantidadDatos / $this->filas);
    }

    public function mount($columnas, $modelo, &$llavesForaneas = null)
    {
        $this->columnas = $columnas;
        $this->modelo = 'App\\Models\\' . $modelo;
        $this->llavesForaneas = $llavesForaneas;

        $this->datosTotales = $this->modelo::all();
        $this->cantidadDatos = $this->datosTotales->count();

        $this->obtenerDatos(1, 5);
    }

    public function render()
    {
        return view('livewire.tabla');
    }
}
