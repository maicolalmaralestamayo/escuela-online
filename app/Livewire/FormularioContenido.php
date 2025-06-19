<?php

namespace App\Livewire;

use App\Models\TipoContenido;
use App\Models\Usuario;
use Livewire\Component;
use Faker\Factory;

class FormularioContenido extends Component
{
    public $modelo;
    public $id;

    //objetos relacionados
    public $usuarios;
    public $tipoContenidos;

    //formulario
    public $contenido;
    public $usuario_id;
    public $tipo_contenido_id;
    public $path;
    public $observacion;

    public $created_at;
    public $updated_at;

    //campos extras
    public $propietario;

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

            $this->propietario = $objeto->usuario->nombre_1 . ' ' . $objeto->usuario->apellido_1 . ' ' . $objeto->usuario->apellido_2;   
        }
    }

    //OK
    public function inicializarRelaciones(){
        $usuarios = Usuario::all();
        $this->usuarios = $usuarios;
        
        $usuario = $usuarios->first();
        $this->usuario_id = $usuario->id;
        $this->propietario = $usuario->nombre_1 . ' ' . $usuario->apellido_1 . ' ' . $usuario->apellido_2;

        $this->tipoContenidos = TipoContenido::all();
        $this->tipo_contenido_id = $this->tipoContenidos->first()->id;

        $faker = Factory::create();
        $this->path = '/' . $faker->word;
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
        return view('livewire.formulario-contenido');
    }
}
