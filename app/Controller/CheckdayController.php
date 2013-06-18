<?php
class CheckdayController extends AppController {
    
    var $name = 'Checkday';
    var $uses = array();

    function zaagmans(){
        $zaagmansGeweest = false;
        $daynumber =  (int)date ("N");
        $hour =  (int)date ("H");
        
        if($daynumber === 3){
            $hour =  (int)date ("H");
            
            if($hour > 11){
                $zaagmansGeweest=true;
            }
            
        }elseif($daynumber > 3){
            $zaagmansGeweest=true;
        }
        $description = 'Testest';
        $this->set(compact('zaagmansGeweest', 'description'));
    }    
}

