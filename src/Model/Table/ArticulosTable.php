<?php
namespace App\Model\Table;

use Cake\ORM\Table;

use Cake\Validation\Validator;

class ArticulosTable extends Table{
    
    public function initialize(array $config) {
        $this->setTable('articulo');
        $this->setPrimaryKey('id');
        $this->setEntityClass('App\Model\Entity\Articulo');

                $this->belongsTo('Usuario')
                ->setForeignKey('usuario_id')
                ->setProperty('usuario');
    }
   
    
}
