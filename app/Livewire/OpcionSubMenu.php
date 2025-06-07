<?php

namespace App\Livewire;

use Livewire\Component;

class OpcionSubmenu extends Component
{
    public $tituloOpcion;
    public $iconoOpcion;
    public $tituloAreaTrabajo;
    public $codigoAreaTrabajo;

    public function mount($tituloOpcion, $iconoOpcion, $tituloAreaTrabajo, $codigoAreaTrabajo){
        $this->tituloOpcion = $tituloOpcion;
        $this->iconoOpcion = $iconoOpcion;
        $this->tituloAreaTrabajo = $tituloAreaTrabajo;
        $this->codigoAreaTrabajo = $codigoAreaTrabajo;
    }

    public function setAreaTrabajo(){
        $this->dispatch('setAreaTrabajo', 
            tituloAreaTrabajo: $this->tituloAreaTrabajo, 
            codigoAreaTrabajo: $this->codigoAreaTrabajo)->to(Html::class);
    }
    
    public function render()
    {
        return view('livewire.opcion-submenu');
    }
}
