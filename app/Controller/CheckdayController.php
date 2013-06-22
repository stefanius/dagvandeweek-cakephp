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
        $this->set('title_for_layout', 'Is zaagmans al geweest?');
        $this->doRender($this->Checkday->isZaagmans());
    }   
    
    function gehaktdag(){
        $this->set('title_for_layout', 'Is het al woensdag gehaktdag?');
        $this->doRender($this->Checkday->isGehaktdag());              
    }
    
    function bieruur(){
        $this->set('title_for_layout', 'Is het al bieruur?');
        $this->doRender($this->Checkday->isBieruur());              
    }
}

