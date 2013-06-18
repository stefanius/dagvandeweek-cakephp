<?php
class CheckdayController extends AppController {
    
    var $name = 'Checkday';
    var $uses = array();

    function zaagmans(){

        $zaagmansGeweest = false;
        $daynumber =  (int)date ("N");
        if($daynumber === 3){
            
        }elseif($daynumber > 3){
            $zaagmansGeweest=true;
        }
        $this->set(compact('zaagmansGeweest'));
    }    
}

