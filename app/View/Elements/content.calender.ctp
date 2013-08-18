	        <div class="row-fluid">
                    
	            <div class="span2">
                           
	            </div><!--/span-->

                    <div id="main-content" class="span7">                       
                        <?php echo $this->Session->flash(); ?>
                        <article>
                            <?php echo $this->fetch('content'); ?>
                        </article>

                        <h3>Selecteer uw Jaarkalender</h3>
                        
                        <?php if(isset($year)): ?>
                            <p>Als u klaar bent met de Kalender van <?php echo $year ?> is het de overweging waard om ook eens te kijken naar onze andere kalenders. Naast het jaar <?php echo $year ?> zijn er genoeg andere kalenders die wij aanbieden. Elk jaar opnieuw.</p>
                        <?php endif; ?>
                        <ul>
                        <?php
                            if(isset($year)){
                                
                                if($year==365){
                                    $years=array();
                                    for($i=1900;$i<2006;$i+=5){
                                        $years[]=$i;
                                    }
                                }else{
                                    $minYear = $year-10;
                                    $maxYear = $year+10;
                                    $years = range($minYear,$maxYear);                                    
                                }

                                foreach($years as $yr){ 
                                    if($yr > 1500 && $yr < 2020){
                                        echo '<li class="inline">'.$this->Html->link('Kalender '.$yr , '/kalender/'.$yr, array('rel'=>'follow')).'</li>';
                                    }                                
                                }
                            }
                        ?>
                        </ul>                        
  
                    </div><!--/span-->
                    
	            <div class="span2 hidden-phone">
                        <?php echo $this->element('calendartext'); ?>

                    </div>
	        </div><!--/row-->