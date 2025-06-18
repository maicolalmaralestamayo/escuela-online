<?php

namespace App\Livewire;

use App\Models\Genero;
use Livewire\Component;

class FormularioUsuario extends Component
{
    public $modelo;
    public $id;

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
        'insertar',
        'inicializar',
    ];

    public function formularioAlObjeto($modelo, &$objeto){
        // $modeloString = 'App\\Models\\' . $modelo;
        // $camposModificables = $modeloString::camposModificables();
        
        $objeto->nombre_1 = $this->nombre_1;
        $objeto->nombre_2 = (empty($this->nombre_2) ? null : $this->nombre_2);
        $objeto->apellido_1 = $this->apellido_1;
        $objeto->apellido_2 = $this->apellido_2;
        $objeto->dni = $this->dni;
        $objeto->genero_id = $this->genero_id;
        $objeto->observacion = (empty($this->observacion) ? null : $this->observacion);
    }

    //OK
    public function insertar($modelo)
    {
        $modeloString = 'App\\Models\\' . $modelo;
        $objeto =  new $modeloString;

        $this->formularioAlObjeto($modelo, $objeto);
        $objeto->save();

        $this->dispatch('actualizarMasivo')->to(Tabla::class);
    }

    //OK
    public function actualizar($modelo, $id)
    {
        if ($id == $this->id) {
            $modeloString = 'App\\Models\\' . $modelo;
            $objeto = $modeloString::find($id);
    
            if ($objeto) {
                $this->formularioAlObjeto($modelo, $objeto);
                $objeto->update();
            }
    
            $this->dispatch('actualizar', $objeto->id)->to(Fila::class);
        }
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

    public function inicializar(){
        $this->nombre_1 = null;
        $this->nombre_2 = null;
        $this->apellido_1 = null;
        $this->apellido_2 = null;
        $this->dni = null;
        // $this->genero_id = null;

        $this->observacion = null;
        $this->created_at = null;
        $this->updated_at = null;

        $this->generos = Genero::all();
        $this->genero_id = $this->generos->first()->id;
    }

    //OK
    public function mount($modelo, $id)
    {
        $this->inicializar();        

        if ($id) {
            $this->consultar($modelo, $id);
        }

        $this->modelo = $modelo;
        $this->id = $id;
    }

    public function render()
    {
        return view('livewire.formulario-usuario');
    }
}
