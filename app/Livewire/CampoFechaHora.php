<?php

namespace App\Livewire;

use Livewire\Component;

class CampoFechaHora extends Component
{
    public $formato;
    public $valor;

    public function mount($formato = 'YYYY-MM-DD HH:mm:ss', $valor = '1992-07-16 10:00:00')
    {
        $this->formato = $formato;
        $this->valor = $valor ?: now()->format('Y-m-d H:i:s');
    }

    public function render()
    {
        return view('livewire.campo-fecha-hora');
    }
}