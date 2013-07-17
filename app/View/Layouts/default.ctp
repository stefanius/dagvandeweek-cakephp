<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
            
            <?php
                
                echo $this->Html->meta('description',$description )."\n";    

                if(isset($canonical)){
                    echo $this->Html->meta('canonical', $canonical, array('rel'=>'canonical', 'type'=>null, 'title'=>null))."\n";
                }
                
                if(isset($robots)){
                    echo $this->Html->meta(array('name' => 'robots', 'content' => $robots))."\n";
                }else{
                    echo $this->Html->meta(array('name' => 'robots', 'content' => 'INDEX,FOLLOW'))."\n";
                }
            ?>
            <meta name="revisit-after" content="1 days">
            <meta name="googlebot" content="noodp">
            <title><?php echo $title_for_layout; ?></title>

		<!--[if lt IE 9]>
      		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
    	<![endif]-->

    	<?php
                echo $this->Html->script('jquery/jquery-2.0.3.min.js');
    		echo $this->Bootstrap->load('min', array('responsive'=>true)); 
                echo $this->fetch('meta')."\n";
                echo $this->fetch('css')."\n";
                echo $this->fetch('script')."\n";
                echo $this->Html->css('custom.aditions.twitter')."\n";     
    	?>

	</head>
	<body>

	    <div id="container" >
                <div id="header">  
                      <?php echo $this->element('header'); ?>
                </div>
	        <div id="content">      
                     <?php echo $this->Html->getCrumbs(' > ', 'Home'); ?>
                     <?php echo $this->element('content'); ?>
                </div>
                <div id="footer" class="hidden-phone">
                      <?php echo $this->element('footer'); ?>                
                </div>
                
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