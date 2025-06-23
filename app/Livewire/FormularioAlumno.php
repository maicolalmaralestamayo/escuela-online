<?php

namespace App\Livewire;

use App\Models\Genero;
use Livewire\Component;

class FormularioAlumno extends Component
{
    public $modelo;
    public $id;

    //objetos relacionados
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

    //escuchadores
    protected $listeners = [
        'actualizar',
        'insertar',
        'inicializar',
        'consultar',
    ];

    //OK
    public function formularioAlObjeto($modelo, &$objeto){
        $modeloString = 'App\\Models\\' . $modelo;
        $camposModificables = $modeloString::camposModificables();

        foreach ($camposModificables as $key => $campo) {
            $objeto->$campo = (empty($this->$campo) ? null : $this->$campo);
        }
    }

    //OK
    public function insertar($modelo)
    {
        if (!$this->id) {
            $modeloString = 'App\\Models\\' . $modelo;
            $objeto =  new $modeloString;
    
            $this->formularioAlObjeto($modelo, $objeto);
            $objeto->save();
    
            $this->dispatch('actualizarMasivo')->to(Tabla::class);
        }
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
            $camposModificables = $modeloString::camposModificables();
            foreach ($camposModificables as $key => $campo) {
                $this->$campo = $objeto->$campo;
            }

            $camposNoModificables = $modeloString::camposNoModificables();
            foreach ($camposNoModificables as $key => $campo) {
                $this->$campo = $objeto->$campo;
            }
        }
    }

    //OK
    public function inicializarRelaciones(){
        $this->generos = Genero::all();
        $this->genero_id = $this->generos->first()->id;
    }

    //OK
    public function inicializar($modelo){
        $modeloString = 'App\\Models\\' . $modelo;
        $camposModificables = $modeloString::camposModificables();

        foreach ($camposModificables as $key => $campo) {
            $this->$campo = null;
        }

        $this->inicializarRelaciones();
    }

    //OK
    public function mount($modelo, $id)
    {
        $this->inicializar($modelo);        

        if ($id) {
            $this->consultar($modelo, $id);
        }

        $this->modelo = $modelo;
        $this->id = $id;
    }

    public function render()
    {
        return view('livewire.formulario-alumno');
    }
}