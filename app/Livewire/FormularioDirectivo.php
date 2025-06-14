<?php

namespace App\Livewire;

use App\Models\Directivo;
use App\Models\Genero;
use Livewire\Component;

class FormularioDirectivo extends Component
{
    //objetos
    public $objeto;//objeto principal
    // public $generos;//objeto relacionado

    //formulario
    public $id;

    public $usuario_id;
    public $correo;
    public $celular;

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

        $this->usuario_id = $this->objeto->usuario_id;
        $this->correo = $this->objeto->correo;
        $this->celular = $this->objeto->celular;

        $this->observacion = $this->objeto->observacion;
        $this->created_at = $this->objeto->created_at;
        $this->updated_at = $this->objeto->updated_at;
    }

    //OK
    public function formToObject(){
        $this->objeto->usuario_id = $this->usuario_id;
        $this->objeto->correo = $this->correo == '' ? null : $this->correo;
        $this->objeto->celular = $this->celular == '' ? null : $this->celular;

        $this->objeto->observacion = $this->observacion == '' ? null : $this->observacion;
    }

    //OK
    public function consultar($id){
        $objeto = Directivo::find($id);
        if ($objeto) {
            $this->objeto = $objeto;
            $this->objectToForm();
        }
    }

    //OK
    public function actualizar($id){
        $this->objeto = Directivo::find($id);
        $this->formToObject();
        $this->objeto->update();
        $this->dispatch('actualizar')->to(Fila::class);
    }

    //OK
    public function insertar(){
        $this->objeto = new Directivo();
        $this->formToObject();
        $this->objeto->save();
        $this->dispatch('actualizarMasivo')->to(Tabla::class);

        $this->reset();
        $this->inicializar(null);
    }

    //OK
    public function inicializar($id){
        // $generos = Genero::all();
        // $this->generos = $generos;
        // $this->genero_id = $generos->first()->id;
        
        $this->consultar($id);
    }

    public function detallesObjeto(){
        $this->dispatch('mount', modelo: 'Usuario', id: 2)->to(ModalDetallesObjeto::class);
    }

    public function mount($id)
    {
        $this->inicializar($id);
    }
    
    public function render()
    {
        return view('livewire.formulario-directivo');
    }
}
