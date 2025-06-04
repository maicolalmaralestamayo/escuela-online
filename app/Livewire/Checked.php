<?php

namespace App\Livewire;

use Livewire\Component;

class Checked extends Component
{
    public $estado;

    public function invertirEstado(){
        $this->estado = !$this->estado;
        dd($this->estado);
    } 

    public function mount($estado){
        $this->estado = $estado;
    }
    
    public function render()
    {
        return view('livewire.checked');
    }
}
