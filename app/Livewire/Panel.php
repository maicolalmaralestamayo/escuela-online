<?php

namespace App\Livewire;

use Livewire\Component;

class Panel extends Component
{
    public $titulo;
    
    public function mount($titulo){
        $this->titulo = $titulo;
    }
    
    public function render()
    {
        return view('livewire.panel');
    }
}
