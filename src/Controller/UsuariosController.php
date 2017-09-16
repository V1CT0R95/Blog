<?php


namespace App\Controller;

use Cake\Filesystem\Folder;
use Cake\Filesystem\File;

class UsuariosController extends AuthController {

    
    public function index() {
        $usuarios = $this->Usuarios->find();
        $this->set('usuario', $usuarios);
    }
        public function login() {
        if ($this->request->is('post')) {
            $user = $this->Auth->identify();
            if ($user) {
                $this->Auth->setUser($user);
                return $this->redirect($this->Auth->redirectUrl());
            }
            $this->Flash->error('Usuario y/o clave inválido');
        }
        
        $this->viewBuilder()->layout('public');
    }
    
    

    
    public function logout(){
        return $this->redirect($this->Auth->logout());
    }
        public function registrar() {
        $Usuarios = $this->Usuarios->newEntity();
        if($this->request->is('post')){
            $Usuarios = $this->Usuarios->patchEntity($Usuarios, $this->request->getData());
            
            if($this->request->data['imagen']['error'] == 0){
                // Se ha adjuntado un archivo 
                $Usuarios->imagen_nombre = $this->request->data['imagen']['name'];
                $Usuarios->imagen_tipo = $this->request->data['imagen']['type'];
                $Usuarios->imagen_tamanio = $this->request->data['imagen']['size'];
                
                new Folder('d:\\var\\data', true, 0755);
                
                $imagen = new File($this->request->data['imagen']['tmp_name']);
                $imagen->copy('d:\\var\\data\\'.$this->request->data['imagen']['name']);
                
            }
            
            if( $this->Usuarios->save($Usuarios) ) {
                $this->Flash->success('Registro guardado correctamente');
                $this->redirect(['action'=>'index']);
            } else {
                $this->Flash->error('Error al momento de guardar el registro');
            }
        }
        
        $this->set('usuario', $Usuarios);
        
    }
    
        public function imagen($id){
        $usuario = $this->Usuarios->get($id);
        $response = $this->response->withFile('d:\\var\\data\\'.$usuario->imagen_nombre);
        // Return the response to prevent controller from trying to render
        // a view.
        return $response;
    }
 
    

    
    

    
    //put your code here
}
