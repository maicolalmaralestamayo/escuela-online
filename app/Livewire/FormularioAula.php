<?php

namespace App\Livewire;

use App\Models\Grado;
use App\Models\Seccion;
use Livewire\Component;

class FormularioAula extends Component
{
    public $modelo;
    public $id;

    //objetos relacionados
    public $grados;
    public $seccions;

    //formulario
    public $grado_id;
    public $seccion_id;
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

            $this->id = $id;
        }
    }

    //OK
    public function inicializarRelaciones(){
        $grados = Grado::all();
        $this->grados = $grados;
        $this->grado_id = $grados->first()->id;

        $seccions = Seccion::all();
        $this->seccions = $seccions;
        $this->seccion_id = $seccions->first()->id;
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
        return view('livewire.formulario-aula');
    }
}