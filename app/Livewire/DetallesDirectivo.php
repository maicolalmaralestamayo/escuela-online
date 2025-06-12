<?php

namespace App\Livewire;

use App\Models\Directivo;
use Livewire\Component;

class DetallesDirectivo extends Component
{
    public $objeto;
    public $id;

    public function mount($id){
        $this->id = $id;

        if ($id) {
            $this->objeto = Directivo::find($id);
        }
    }
    
    public function render()
    {
        return view('livewire.detalles-directivo');
    }
}
