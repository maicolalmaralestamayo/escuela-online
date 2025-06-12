<?php

namespace App\Livewire;

use App\Models\Usuario;
use Livewire\Component;

class FormularioUsuario extends Component
{
    public $objeto;

    public $id;
    public $nombre_1;
    public $nombre_2;
    public $apellido_1;
    public $apellido_2;

    protected $listeners = [
        'actualizar'
    ];

    public function consultar(){
        $this->nombre_1 = $this->objeto->nombre_1;
        $this->nombre_2 = $this->objeto->nombre_2;
        $this->apellido_1 = $this->objeto->apellido_1;
        $this->apellido_2 = $this->objeto->apellido_2;
    }

    public function actualizar(){
        $this->objeto->nombre_1 = $this->nombre_1;
        $this->objeto->nombre_2 = $this->nombre_2;
        $this->objeto->apellido_1 = $this->apellido_1;
        $this->objeto->apellido_2 = $this->apellido_2;
        $this->objeto->update();

        $this->dispatch('actualizar')->to(Fila::class);
    }

    public function mount($id)
    {
        $this->id = $id;

        if ($id) {
            $this->objeto = Usuario::find($id);
            $this->consultar();
        } else {
            
        }
    }
    
    public function render()
    {
        return view('livewire.formulario-usuario');
    }
}
