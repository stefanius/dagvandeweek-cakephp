<?php
class CheckdayController extends AppController {
    
    var $name = 'Checkday';

    private function doRender($DayResult){
        $description = $DayResult['description'];
        $robots = $DayResult['robots'];
        $showwhatislink=true;
        $this->set(compact('DayResult', 'description', 'robots', 'showwhatislink')); 
    }
    function zaagmans(){
        $this->doRender($this->Checkday->isZaagmans());
    }   
    
    function gehaktdag(){
        $this->doRender($this->Checkday->isGehaktdag());              
    }
}

