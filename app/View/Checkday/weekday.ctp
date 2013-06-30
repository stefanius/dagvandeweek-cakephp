<h1>Is het al <?php echo  $DayResult['dayname'];?>?</h1>
<?php if($DayResult['doaction']===true): ?>
    <p>Jazeker, het is vandaag de hele dag <strong><?php echo  $DayResult['dayname'];?></strong></p>
<?php else: ?>
    <p>Nee, helaas. Het is vandaag geen <strong> <?php echo  $DayResult['dayname'];?></strong>.</p>
    <p>Hoewel het nu geen <strong> <?php echo  $DayResult['dayname'];?></strong> is,kunt u wel
        kijken of het nu <strong> <?php echo $this->Html->link('Vandaag', '/ishetvandaag/vandaag/'); ?> </strong>is. En kom natuurlijk snel weer terug om te zien 
        of het een andere keer wel  <strong><?php echo  $DayResult['dayname'];?></strong> is.</p>
<?php endif; ?>

