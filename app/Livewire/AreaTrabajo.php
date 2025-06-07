<?php

namespace App\Livewire;

use Livewire\Component;

class AreaTrabajo extends Component
{
    public $tituloAreaTrabajo;
    public $codigoAreaTrabajo;

    public function mount($tituloAreaTrabajo, $codigoAreaTrabajo){
        $this->tituloAreaTrabajo  = $tituloAreaTrabajo;
        $this->codigoAreaTrabajo = $codigoAreaTrabajo;
    }

    public function render()
    {
        return view('livewire.area-trabajo');
    }
}
