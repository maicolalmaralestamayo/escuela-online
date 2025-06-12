<?php

namespace App\Livewire;

use App\Models\Genero;
use App\Models\Usuario;
use Livewire\Component;

class FormularioUsuario extends Component
{
    //objetos
    public $objeto;//objeto principal
    public $generos;//objeto relacionado

    //formulario
    public $id;
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
    ];

    //OK
    public function objectToForm(){
        $this->id = $this->objeto->id;
        $this->nombre_1 = $this->objeto->nombre_1;
        $this->nombre_2 = $this->objeto->nombre_2;
        $this->apellido_1 = $this->objeto->apellido_1;
        $this->apellido_2 = $this->objeto->apellido_2;
        $this->dni = $this->objeto->dni;
        $this->genero_id = $this->objeto->genero_id;
        $this->observacion = $this->objeto->observacion;
        $this->created_at = $this->objeto->created_at;
        $this->updated_at = $this->objeto->updated_at;
    }

    //OK
    public function formToObject(){
        $this->objeto->nombre_1 = $this->nombre_1;
        $this->objeto->nombre_2 = $this->nombre_2 == '' ? null : $this->nombre_2;
        $this->objeto->apellido_1 = $this->apellido_1;
        $this->objeto->apellido_2 = $this->apellido_2;
        $this->objeto->dni = $this->dni;
        $this->objeto->genero_id = $this->genero_id;
        $this->objeto->observacion = $this->observacion == '' ? null : $this->observacion;
    }

    //OK
    public function consultar($id){
        $objeto = Usuario::find($id);
        if ($objeto) {
            $this->objeto = $objeto;
            $this->objectToForm();
        }
    }

    //OK
    public function actualizar($id){
        $this->objeto = Usuario::find($id);
        $this->formToObject();
        $this->objeto->update();
        $this->dispatch('actualizar')->to(Fila::class);
    }

    //OK
    public function insertar(){
        $this->objeto = new Usuario();
        $this->formToObject();
        $this->objeto->save();
        $this->dispatch('actualizar')->to(Fila::class);

        $this->reset();
        $this->inicializar(null);
    }

    //OK
    public function inicializar($id){
        $generos = Genero::all();
        $this->generos = $generos;
        $this->genero_id = $generos->first()->id;
        
        $this->consultar($id);
    }

    public function mount($id)
    {
        $this->inicializar($id);
    }
    
    public function render()
    {
        return view('livewire.formulario-usuario');
    }
}