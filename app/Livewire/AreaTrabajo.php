<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\On;

class AreaTrabajo extends Component
{
    public $areaTrabajo;

    #[On('areaTrabajo')]
    function areaTrabajo($area){
        $this->areaTrabajo = $area;
    }
    
    public function render()
    {
        return view('livewire.area-trabajo');
    }
}
