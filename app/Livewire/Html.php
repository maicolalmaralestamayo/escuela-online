<?php

namespace App\Livewire;

use Livewire\Component;

class Html extends Component
{
    public $tituloAreaTrabajo = 'Bienvenidos';
    public $codigoAreaTrabajo = '16';
    
    protected $listeners = [ 'setAreaTrabajo' ];

    public function setAreaTrabajo($tituloAreaTrabajo, $codigoAreaTrabajo){
        $this->tituloAreaTrabajo  = $tituloAreaTrabajo;
        $this->codigoAreaTrabajo = $codigoAreaTrabajo;
    }

    public function render()
    {
        return view('livewire.html');
    }
}