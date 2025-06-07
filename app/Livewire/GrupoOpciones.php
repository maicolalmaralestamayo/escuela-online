<?php

namespace App\Livewire;

use Livewire\Component;

class GrupoOpciones extends Component
{
    public $tituloGrupo;
    public $iconoGrupo;

    public function mount($tituloGrupo, $iconoGrupo){
        $this->tituloGrupo = $tituloGrupo;
        $this->$iconoGrupo = $iconoGrupo;
    }

    public function render()
    {
        return view('livewire.grupo-opciones');
    }
}
