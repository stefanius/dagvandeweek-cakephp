<?php
    $this->Html->addCrumb('Nieuws', '/nieuws');
    $this->Html->addCrumb($Content['Content']['title'], '/nieuws/'.$Content['Content']['urlpart']);
?>
<h1><?php echo $Content['Content']['title']; ?></h1>

<?php echo $Content['Content']['pagecontent']; ?>

<div><strong>Publicatiedatum:</strong> <?php echo $Content['Content']['created']; ?></div>