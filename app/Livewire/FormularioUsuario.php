<?php

namespace App\Livewire;

use App\Models\Genero;
use Livewire\Component;

class FormularioUsuario extends Component
{
    public $modelo;
    public $id;
    public $modeloString;

    // //objetos relacionados
    public $generos;

    //formulario
    public $nombre_1;
    public $nombre_2;
    public $apellido_1;
    public $apellido_2;
    public $dni;
    public $genero_id;

    public $observacion;
    public $created_at;
    public $updated_at;

    protected $listeners = [
        'actualizar',
    ];

    //OK
    public function actualizar($modelo, $id)
    {
        $modeloString = 'App\\Models\\' . $modelo;
        $objeto = $modeloString::find($id);

        if ($objeto) {
            $objeto->nombre_1 = $this->nombre_1;
            $objeto->nombre_2 = $this->nombre_2;
            $objeto->apellido_1 = $this->apellido_1;
            $objeto->apellido_2 = $this->apellido_2;
            $objeto->dni = $this->dni;
            $objeto->genero_id = $this->genero_id;
            $objeto->observacion = $this->observacion;
            $objeto->save();
        }

        $this->dispatch('actualizar', $objeto->id)->to(Fila::class);
    }

    //OK
    public function consultar($modelo, $id)
    {
        $modeloString = 'App\\Models\\' . $modelo;
        $objeto = $modeloString::find($id);

        if ($objeto) {
            $this->nombre_1 = $objeto->nombre_1;
            $this->nombre_2 = $objeto->nombre_2;
            $this->apellido_1 = $objeto->apellido_1;
            $this->apellido_2 = $objeto->apellido_2;
            $this->dni = $objeto->dni;
            $this->genero_id = $objeto->genero_id;
    
            $this->observacion = $objeto->observacion;
            $this->created_at = $objeto->created_at;
            $this->updated_at = $objeto->updated_at;
        }
    }

    //OK
    public function mount($modelo, $id)
    {
        //inicializar relaciones
        $this->generos = Genero::all();

        if ($id) {
            $this->consultar($modelo, $id);
        }

        $this->modelo = $modelo;
        $this->modeloString = 'App\\Models\\' . $modelo;
        $this->id = $id;
    }

    public function render()
    {
        return view('livewire.formulario-usuario');
    }
}
