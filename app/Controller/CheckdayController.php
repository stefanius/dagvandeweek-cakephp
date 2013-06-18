<?php
class CheckdayController extends AppController {
    
    var $name = 'Checkday';
    var $uses = array();

    function zaagmans(){
        $zaagmansGeweest = false;
        $daynumber =  (int)date ("N");
        
        if($daynumber === 3){
            $hour =  (int)date ("H");
            
            if($hour > 11){
                $zaagmansGeweest=true;
            }
            
        }elseif($daynumber > 3){
            $zaagmansGeweest=true;
        }
        $description = 'Bekijk hier dagelijks of Zaagmans al is geweest. Zaagmaans komt elke woensdag langs op Dag Van De Week. Elke week weer een zaagmans.';
        $robots = 'INDEX, FOLLOW';
        $this->set(compact('zaagmansGeweest', 'description', 'robots'));
    }   
    
    function gehaktdag(){
        $gehaktdag = false;
        $daynumber =  (int)date ("N");
        
        if($daynumber === 3){
            $gehaktdag=true;
        }
        
        $description = 'Woensdag Gehaktdag. Bekijk hier dagelijks of het al gehaktdag is. Elke woensdag is Gehaktdag op Dag Van De Week. Elke week weer een gehaktdag.';
        $robots = 'INDEX, FOLLOW';
        $this->set(compact('zaagmansGeweest', 'description', 'robots'));
    }
}

