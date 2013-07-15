<h1><?php echo $Topper['Topper']['title']; ?></h1>
<h3>Topper van de Week (Week <?php echo $Topper['Topper']['week']; ?> - <?php echo $Topper['Topper']['year']; ?>)</h3>
<?php echo $Topper['Topper']['pagecontent']; ?>
<p>
    <strong>Terug naar <?php echo $this->Html->link(__('Jaaroverzicht '.$year), array('action' => 'showtopper',$year)); ?></strong>
</p>