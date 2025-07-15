<?php

namespace App\Livewire;

use App\Models\Usuario;
use Livewire\Component;

class FormularioActividad extends Component
{
    public $modelo;
    public $id;

    //objetos relacionados
    public $usuarios;
    public $creador;

    //formulario
    public $actividad;
    public $descripcion;
    public $inicio;
    public $fin;
    public $usuario_id;
    public $observacion;

    public $created_at;
    public $updated_at;

    //escuchadores
    protected $listeners = [
        'actualizar',
        'insertar',
        'inicializar',
        'consultar',
        'eliminar',
    ];

    //OK
    public function eliminar()
    {
        $modeloString = 'App\\Models\\' . $this->modelo;
        $objeto = $modeloString::find($this->id);

        if ($objeto) {
            $objeto->delete();
            $this->dispatch('eliminarFila2', id: $this->id)->to(Fila::class);
        }
    }

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
    public function actualizar()
    {
        $modeloString = 'App\\Models\\' . $this->modelo;
        $objeto = $modeloString::find($this->id);

        if ($objeto) {
            $this->formularioAlObjeto($modelo, $objeto);
            $objeto->update();
        }

        $this->dispatch('actualizar', $objeto->id)->to(Fila::class);
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
            $this->creador = $objeto->usuario->nombre_1 . ' ' . $objeto->usuario->nombre_2 . ' ' . $objeto->usuario->apellido_1 . ' ' . $objeto->usuario->apellido_2;
        }
    }

    //OK
    public function inicializarRelaciones(){
        $usuarios = Usuario::all();
        $this->usuarios = $usuarios;

        $usuario = $usuarios->first();
        $this->usuario_id = $usuario->id;
        $this->creador = $usuario->nombre_1 . ' ' . $usuario->nombre_2 . ' ' . $usuario->apellido_1 . ' ' . $usuario->apellido_2;

        $this->inicio = now()->format('Y-m-d H:i:s');
        $this->fin = now()->format('Y-m-d H:i:s');
    }

    //OK
    public function inicializar($modelo){
        $modeloString = 'App\\Models\\' . $modelo;
        $camposModificables = $modeloString::camposModificables();

        foreach ($camposModificables as $key => $campo) {
            $this->$campo = null;
        }

        $this->inicializarRelaciones();
        $this->id = null;
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
        return view('livewire.formulario-actividad');
    }
}