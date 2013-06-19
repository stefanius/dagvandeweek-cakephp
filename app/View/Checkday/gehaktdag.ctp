<?php if($DayResult['doaction']===true): ?>
    Vandaag is <strong>Woensdag Gehaktdag</strong>. Geniet ervan!
<?php else: ?>
    Helaas. Het is nog geen gehaktdag. U moet nog <?php echo $DayResult['countdown']; ?> dagen wachten.
<?php endif; ?>