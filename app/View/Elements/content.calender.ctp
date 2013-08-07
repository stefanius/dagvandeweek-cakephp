	        <div class="row-fluid">
                    
	            <div class="span2">

	            </div><!--/span-->

                    <div id="main-content" class="span7">                       
                        <?php echo $this->Session->flash(); ?>

                        <?php echo $this->fetch('content'); ?>
  
                    </div><!--/span-->
                    
	            <div class="span2 hidden-phone">
                        <div id="calender-years" class="well sidebar-nav">
                            <ul>
                            <?php
                                if(isset($year)){
                                    $minYear = $year-5;
                                    $maxYear = $year+5;
                                    $years = range($minYear,$maxYear);  
                                    
                                    foreach($years as $yr){ 
                                        if($yr > 1500 && $yr < 2020){
                                            echo '<li>'.$this->Html->link('Kalender '.$yr , '/kalender/'.$yr, array('rel'=>'follow')).'</li>';
                                        }                                
                                    }
                                }
                            ?>
                            </ul>
                        </div>
                    </div>
	        </div><!--/row-->