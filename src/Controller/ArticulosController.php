<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace App\Controller;

/**
 * Description of UsuariosController
 *
 * @author vmeneses
 */
class ArticulosController extends AuthController {
        public function initialize() {
        parent::initialize();
        $this->loadModel('Usuarios');
    }

    public function index() {
        $usuario = $this->Auth->user();
        
        $this->set('nombres', $usuario['nombres']); 
        
        $articulos = $this->Articulos->find()->contain(['Usuario']);
        $this->set('articulo', $articulos);

        
        
    }
    
    
        public function Vista($id = null)
    {
        $articulo = $this->Articulos->get($id, [
            'contain' => ['Usuario']
        ]);

        $this->set('articulo', $articulo);
        $this->set('_serialize', ['usuario']);
    }

    
    public function mantenimiento(){
        $articulos = $this->Articulos->find()->contain(['Usuario']);
        $this->set('articulo', $articulos);
        
        
    }
        public function registrar() {
        $articulo = $this->Articulos->newEntity();
        
        if($this->request->is('post')){
            
            $articulo = $this->Articulos->patchEntity($articulo, $this->request->getData());
            if($this->Articulos->save($articulo)){
                $this->Flash->success('Registro guardado correctamente');
                return $this->redirect(['action' => 'mantenimiento']);
            }else{
                $this->Flash->error('Erro al momento de guardar');
            }
            
        }
              $this->set('articulo', $articulo);
        
        // Usamos el find('list') para llenar el select [id => 'nombre', ...]
        $usuarios = $this->Usuarios->find('list');
        $this->set('usuarios', $usuarios);
        }
        
                public function eliminar($id) {
        $articulo = $this->Articulos->get($id);
        if($this->Articulos->delete($articulo)){
            $this->Flash->success('Registro eliminado correctamente');
        }else{
            $this->Flash->error('Erro al momento de guardar');
        }
        return $this->redirect(['action' => 'mantenimiento']);
    }
    
        public function editar($id) {
        $articulo = $this->Articulos->get($id);
        
        if($this->request->is('put')){
            $articulo = $this->Articulos->patchEntity($articulo, $this->request->getData());
            if($this->Articulos->save($articulo)){
                $this->Flash->success('Registro guardado correctamente');
                return $this->redirect(['action' => 'mantenimiento']);
            }else{
                $this->Flash->error('Erro al momento de guardar');
            }   
        }
        
        // Usamos el find('list') para llenar el select [id => 'nombre', ...]
        $usuarios = $this->Usuarios->find('list');
        $this->set('usuarios', $usuarios);
        
        $this->set('articulo', $articulo);
    }

    
    

}
