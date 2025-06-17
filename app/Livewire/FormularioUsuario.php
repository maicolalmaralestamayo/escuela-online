<?php

namespace App\Livewire;

use App\Models\Genero;
use App\Models\Usuario;
use Livewire\Component;

class FormularioUsuario extends Component
{
    public $texto=null;

    public function setTexto($texto){
        $this->texto = $texto;
        $this->render();
    }

    // //objetos relacionados
    // public $generos;

    // //formulario
    // public $id;
    // public $nombre_1;
    // public $nombre_2;
    // public $apellido_1;
    // public $apellido_2;
    // public $dni;
    // public $genero_id;

    // public $observacion;
    // public $created_at;
    // public $updated_at;

    // protected $listeners = [
    //     // 'inicializar',
    //     'actualizar',
    //     'consultar',
    //     // 'insertar',
    //     // 'vaciarFormulario'
    // ];

    // //OK
    // public function actualizar($id)
    // {
    //     $objeto = Usuario::find($id);

    //     $objeto->nombre_1 = $this->nombre_1;
    //     $objeto->nombre_2 = $this->nombre_2 == '' ? null : $this->nombre_2;
    //     $objeto->apellido_1 = $this->apellido_1;
    //     $objeto->apellido_2 = $this->apellido_2;
    //     $objeto->dni = $this->dni;
    //     $objeto->genero_id = $this->genero_id;
    //     $objeto->observacion = $this->observacion == '' ? null : $this->observacion;

    //     $objeto->save();

    //     $this->dispatch('actualizar', $objeto->id)->to(Fila::class);
    // }

    // //OK
    // public function consultar($id)
    // {
    //     $objeto = Usuario::find($id);

    //     $this->id = $objeto->id;
    //     $this->nombre_1 = $objeto->nombre_1;
    //     $this->nombre_2 = $objeto->nombre_2 == '' ? null : $this->nombre_2;
    //     $this->apellido_1 = $objeto->apellido_1;
    //     $this->apellido_2 = $objeto->apellido_2;
    //     $this->dni = $objeto->dni;
    //     $this->genero_id = $objeto->genero_id;

    //     $this->observacion = $objeto->observacion == '' ? null : $this->observacion;
    //     $this->created_at = $objeto->created_at;
    //     $this->updated_at = $objeto->updated_at;
    // }

    //OK
    // public function mount($id = null)
    // {
    //     //inicializar relaciones
    //     // $this->generos = Genero::all();
    // }

    public function render()
    {
        return view('livewire.formulario-usuario');
    }
}
