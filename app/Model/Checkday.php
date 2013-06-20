<?php
App::uses('AppModel', 'Model');
/**
 * Content Model
 *
 */
class Checkday extends AppModel {

/**
 * Use table
 *
 * @var mixed False or table name
 */
	public $useTable = false;

        private function fetch($description,$doaction=false,$robots=false, $dayofweek=0, $countdown=false){
            if($robots===false){
                $robots = 'INDEX, FOLLOW';
            }
            $result = array(
                'description'=>$description,
                'robots'=>$robots,
                'doaction'=>$doaction,
                'dayofweek'=>$dayofweek,
                'countdown'=>$countdown
            );
            return $result;
        }

        public function isZaagmans(){
            $zaagmansGeweest = false;
            $dayofweek =  (int)date ("N");

            if($dayofweek === 3){
                $hour =  (int)date ("H");

                if($hour > 11){
                    $zaagmansGeweest=true;
                }

            }elseif($dayofweek > 3){
                $zaagmansGeweest=true;
            }
            $description = 'Bekijk hier dagelijks of Zaagmans al is geweest. Zaagmaans komt elke woensdag langs op Dag Van De Week. Elke week weer een zaagmans.';
            return $this->fetch($description, $zaagmansGeweest, false, $dayofweek);
        }
        
        public function isGehaktdag(){
            $gehaktdag = false;
            $dayofweek =  (int)date ("N");

            if($dayofweek === 3){
                $gehaktdag=true;
            }

            if($dayofweek <=3){
                $countdown = 3-$dayofweek;
            }else{
                $countdown = 4 + (6-$dayofweek);
            }

            $description = 'Woensdag Gehaktdag. Bekijk hier dagelijks of het al gehaktdag is. Elke woensdag is Gehaktdag op Dag Van De Week. Elke week weer een gehaktdag.';

            return $this->fetch($description, $gehaktdag, false, $dayofweek, $countdown);
        }
}
