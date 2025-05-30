<?php

namespace App\Http\Controllers;

use App\Models\Persona;
use Illuminate\Http\Request;
use Livewire\Livewire;

class FrontController extends Controller
{
    public function consultarPersonas(Request $request){
        $model = Persona::class;
        $columns = Persona::columnRename();
        $rows = JsonController::consultar($request);

        $nombre = 'maicol';

        return Livewire::mount('work-space', [
            'nombre' => $nombre,
            'model' => $model,
            'columns' => $columns,
            'rows' => $rows
        ]);
        
        // return view('components.layouts.app')
        //             ->with('model', $model)
        //             ->with('columns', $columns)
        //             ->with('rows', $rows);
    }
}