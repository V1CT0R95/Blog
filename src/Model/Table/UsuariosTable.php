<?php
namespace App\Model\Table;

use Cake\ORM\Table;

use Cake\Validation\Validator;

class UsuariosTable extends Table{
    
    public function initialize(array $config) {
        $this->setTable('usuario');
        $this->setPrimaryKey('id');
        $this->setEntityClass('App\Model\Entity\Usuario');


        
             $this->hasMany('Articulo')
                ->setForeignKey('usuario_id')
                ->setProperty('articulo');
        
        // Indica el campo a mostrar en un input select
        $this->setDisplayField('nombres');
    }
    

    
}
