<h1>Is het al <?php echo  $DayResult['dayname'];?>?</h1>
<?php if($DayResult['doaction']===true): ?>
    Jazeker, het is vandaag de hele dag <?php echo  $DayResult['dayname'];?>
<?php else: ?>
    Nee, helaas. Het is vandaag geen <strong> <?php echo  $DayResult['dayname'];?></strong>.
<?php endif; ?>