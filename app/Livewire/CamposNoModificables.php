<?php

namespace App\Livewire;

use Livewire\Component;

class CamposNoModificables extends Component
{
    public $id;
    public $created_at;
    public $updated_at;

    public function mount($id, $created_at, $updated_at){
        $this->id = $id;
        $this->created_at = $created_at;
        $this->updated_at = $updated_at;
    }
    
    public function render()
    {
        return view('livewire.campos-no-modificables');
    }
}
