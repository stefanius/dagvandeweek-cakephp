<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <?php
                echo $this->Html->meta('description',$description );                
                echo $this->Html->meta(array('name' => 'robots', 'content' => $robots));            
            ?>
            <title><?php echo $title_for_layout; ?></title>

		<!--[if lt IE 9]>
      		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
    	<![endif]-->

    	<?php
    		//Load Bootstrap:  
    		echo $this->Bootstrap->load(); 


                echo $this->fetch('meta');
                echo $this->fetch('css');
                echo $this->fetch('script');
                echo $this->Html->css('custom.aditions.twitter');
             
    	?>

	</head>
	<body>

	    <div class="navbar navbar-fixed-top">
	      <div class="navbar-inner">
	        <div class="container">
	          <a class="btn btn-navbar" data-target=".nav-collapse" data-toggle="collapse">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </a>
	          <?php echo $this->Html->link('DagVanDeWeek', '/', array('class' => 'brand')); ?>
	          <div class="container nav-collapse">
	            <ul class="nav">
	            	<!--<li><?php echo $this->Html->link('Link1', '/link1'); ?></li> -->
	            </ul>
	          </div><!--/.nav-collapse -->
	        </div>
	      </div>
	    </div>

	    <div class="container-fluid" id="custcontainer">
	        <div class="row-fluid">
                    
	            <div class="span2">
                        <br/><br/><br/>
	              <div class="well sidebar-nav">
                          
	                <h3>Pagina's</h3>
	                <ul class="nav nav-list">
	                  <li class="nav-header">Is het al</li>
	                  <li><?php echo $this->Html->link('Gehaktdag', '/gehaktdag'); ?></li>
	                  <li><?php echo $this->Html->link('Bieruur', '/bieruur'); ?></li>
	                </ul>
                        
	                <ul class="nav nav-list">
	                  <li class="nav-header">Is het tijd voor</li>
	                  <li><?php echo $this->Html->link('Zaagmans', '/zaagmans'); ?></li>
	                </ul>
                        
                        
	              </div><!--/.well -->
	            </div><!--/span-->

	           	<div id="main-content" class="span7">
                            <br/><br/><br/>
                          
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
                        <br/><br/><br/>
	              <div class="well sidebar-nav">
                          <?php echo $this->element('today'); ?>
                      </div>
                    </div>
                    
                    
                    

	        </div><!--/row-->

	      <footer id="custfooter">
	                <ul class="nav nav-list">
	                  <li class="nav-header">Is het al</li>
	                  <li><?php echo $this->Html->link('Gehaktdag', '/gehaktdag'); ?></li>
	                  <li><?php echo $this->Html->link('Bieruur', '/bieruur'); ?></li>
	                </ul>
	                <ul class="nav nav-list">
	                  <li class="nav-header">Is het al</li>
	                  <li><?php echo $this->Html->link('Gehaktdag', '/gehaktdag'); ?></li>
	                  <li><?php echo $this->Html->link('Bieruur', '/bieruur'); ?></li>
	                </ul>
	      </footer>

	    </div> <!-- /container -->

	</body>
        
    <script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-36212308-2']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

    </script>
</html>

