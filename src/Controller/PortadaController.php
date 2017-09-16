<?php
namespace App\Controller;

class PortadaController extends AuthController {
    
    public function index() {

        $usuario = $this->Auth->user();
        
        $this->set('nombres', $usuario['nombres']);                
        
 
    }
    
}
