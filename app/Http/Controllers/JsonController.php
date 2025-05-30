<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request; 

class JsonController extends Controller
{
    // funciones auxiliares
    
    private static function segmentToModel($segment){
        //conformar el arreglo si es una tabla de nombre compuesto
        $segmentArray = explode('_', $segment);
      
        //eliminación de la pluralidad y conversión de letra inicial mayúscula
        foreach ($segmentArray as $key => $segment) {
            //pluralidad
            if (str_ends_with($segment, 's')) {
                $segmentArray[$key] = substr($segment, 0, -1);
            } elseif (str_ends_with($segment, 'es')) {
                $segmentArray[$key] = substr($segment, 0, -2);
            }

            //letra incial mayúscula
            $segmentArray[$key] = ucfirst($segmentArray[$key]);
        }
        
        //conformación del modelo
        return implode('', $segmentArray);
    }

    private static function searchResource(Request $request){
        $index = 0;
        foreach ($request->segments() as $key => $segment) {
            $index++;

            switch ($index) {
                //modelo principal
                case 1:
                    $principalClass = getRoute(self::segmentToModel($segment));
                    $resource = $principalClass::get();
                break;
                
                //instancia principal del modelo
                case 2:
                    if (isset($principalClass)) {
                        $resource = $principalClass::find($segment);
                    }
                break;

                //relaciones o identificadores
                default:
                    //verificar si la solicitud está pidiendo una relación
                    $relationship = preg_match('/^[a-z_]+$/', $segment);
                    if ($relationship && isset($resource)) {
                        $resource = $resource->$segment;
                    };

                    //verificar si la solicitud está pidiendo un ID dentro de una colección
                    $id = preg_match('/^\d+$/', $segment);
                    if ($id && isset($resource)) {
                        $resource = $resource->find($segment);
                    };
                break;
            }
        }
        
        return $resource;
    }

    private static function sortResource(&$resource, Request $request){
        //verificar si hay que aplicar ordenación
        if (!$request->query('sort')) {
            return;
        }
        
        //obtener los filtros de la petición
        $sortList = $request->query('sort');
        $sortArray = explode(',', $sortList);
        
        //armar los filtros de la colección
        $sortFilters = [];
        foreach ($sortArray as $key => $sort) {
            if (str_starts_with($sort, '-')) {
                $sortFilters[] = [substr($sort, 1), 'desc'];
            } else {
                $sortFilters[] = [$sort, 'asc'];
            }
        }

        //aplicar la ordenación
        if ($resource instanceof Collection) {
           $resource = $resource->sortBy($sortFilters);
        }
    }

    private static function fieldsResource(&$resource, Request $request){
        //verificar si hay que aplicar filtros de campos
        //si no se pone el filtro, se obtien todos los campos
        if (!$request->query('fields')) {
            return;
        }
        
        //armar los filtros de campos (se tiene en cuenta el filtro de excepción)
        $fieldsList = $request->query('fields');
        if (str_starts_with($fieldsList, '-')) {
            $except = true;
            $fieldsList = substr($fieldsList, 1);
        }
        $fieldsArray = explode(',', $fieldsList);
        
        //eliminar los campos de excepción
        if (isset($except)) {
            if ($resource instanceof Collection) {
                $resource->transform(function($object) use ($fieldsArray){
                    foreach ($fieldsArray as $key => $field) {
                        unset($object[$field]);
                    }
                    return $object;
                });
            } elseif ($resource instanceof Model) {
                foreach ($fieldsArray as $key => $field) {
                    unset($resource->$field);
                }
            }
        }

        //eliminar los campos de NO excepción
        if (!isset($except)) {
            if ($resource instanceof Collection) {
                $resource->transform(function($object) use ($fieldsArray){
                    $fields = [];
                    foreach ($fieldsArray as $key => $field) {
                        $fields[$field] = $object[$field];
                    }
                    return $fields;
                });
            } elseif ($resource instanceof Model) {
                $resource = $resource->only($fieldsArray);
            }
        }
    }

    // CRUD
    
    public static function consultar(Request $request){
        $resource = self::searchResource($request);

        self::sortResource($resource, $request);
        self::fieldsResource($resource, $request);
        return $resource;
    }

    function insertar(Request $request){
        return response()->json(['buscar2']);
    }

    function actualizar(Request $request){
        return response()->json(['buscar2']);
    }

    function eliminar(Request $request){
        return response()->json(['buscar2']);
    }
}