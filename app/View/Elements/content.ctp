	        <div class="row-fluid">
                    
	            <div class="span2">

	            </div><!--/span-->

                    <div id="main-content" class="span7">                       
                        <?php echo $this->Session->flash(); ?>

                        <?php echo $this->fetch('content'); ?>
                        <?php 
                            if(isset($showwhatislink)){
                                if($showwhatislink===true){
                                    echo $this->element('watislink'); 
                                }                                                
                            }
                        ?>
                    </div><!--/span-->
                    
	            <div class="span3">
                        <div id="today" class="well sidebar-nav">
                            <?php echo $this->element('today'); ?>
                        </div>
                    </div>
	        </div><!--/row-->