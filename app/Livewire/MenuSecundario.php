<?php

namespace App\Livewire;

use Livewire\Component;

class MenuSecundario extends Component
{
    public $nombreAplicacion = 'Escuela Online';
    public $opcionesMenu = [
            [
                'icono' => 'person',
                'titulo' => 'Personas',
                'opciones' => [
                    ['icono' => 'person-gear', 'titulo' => 'Roles', 'areaTrabajo' => 'roles'],
                    ['icono' => 'people', 'titulo' => 'Usuarios', 'areaTrabajo' => 'usuarios'],
                    ['icono' => 'person-up', 'titulo' => 'Administradores', 'areaTrabajo' => 'administradores'],
                    ['icono' => 'person-check', 'titulo' => 'Directivos', 'areaTrabajo' => 'directivos'],
                    ['icono' => 'person-check', 'titulo' => 'Docentes', 'areaTrabajo' => 'docentes'],
                    ['icono' => 'person-check', 'titulo' => 'Tutores', 'areaTrabajo' => 'tutores'],
                    ['icono' => 'person-check', 'titulo' => 'Alumnos', 'areaTrabajo' => 'alumnos'],
                    ['icono' => 'person-vcard', 'titulo' => 'Contactos', 'areaTrabajo' => 'contactos'],
                    ['icono' => 'gender-ambiguous', 'titulo' => 'Géneros', 'areaTrabajo' => 'generos']],
            ],
            [
                'icono' => 'mortarboard',
                'titulo' => 'Estructura',
                'opciones' => [
                    ['icono' => '123', 'titulo' => 'Grados', 'areaTrabajo' => 'grados'], 
                    ['icono' => 'alphabet-uppercase', 'titulo' => 'Secciones', 'areaTrabajo' => 'secciones'], 
                    ['icono' => 'book', 'titulo' => 'Asignaturas', 'areaTrabajo' => 'asignaturas'], 
                    ['icono' => 'journal-check', 'titulo' => 'Cursos', 'areaTrabajo' => 'cursos'], 
                    ['icono' => 'person-workspace', 'titulo' => 'Aulas', 'areaTrabajo' => 'aulas']]
            ],
            [
                'icono' => 'speedometer2',
                'titulo' => 'Formación',
                'opciones' => [
                    ['icono' => 'collection-play', 'titulo' => 'Tipos de recursos', 'areaTrabajo' => 'tiposRecursos'], 
                    ['icono' => 'file-earmark-binary', 'titulo' => 'Recursos', 'areaTrabajo' => 'recursos'], 
                    ['icono' => 'list-check', 'titulo' => 'Actividades', 'areaTrabajo' => 'actividades'], 
                    ['icono' => 'pencil-square', 'titulo' => 'Respuestas', 'areaTrabajo' => 'respuestas'], 
                    ['icono' => 'megaphone', 'titulo' => 'Anuncios', 'areaTrabajo' => 'anuncios']]
            ],
            [
                'icono' => 'clipboard-check',
                'titulo' => 'Evaluación',
                'opciones' => [
                    ['icono' => '5-circle', 'titulo' => 'Tipos de calificaciones', 'areaTrabajo' => 'tiposCalificaciones'], 
                    ['icono' => 'patch-check', 'titulo' => 'Calif. cursos', 'areaTrabajo' => 'califCursos']]
            ]
        ];

    public function mount()
    {
       
    }

    public function render()
    {
        return view('livewire.menu-secundario');
    }
}
