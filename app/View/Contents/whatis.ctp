<?php
    $this->Html->addCrumb('Wat Is', '/watis');
    $this->Html->addCrumb($Content['Content']['title'], '/watis/'.$Content['Content']['urlpart']);
?>

<h1> <?php echo $Content['Content']['title']; ?></h1>

<?php echo $Content['Content']['pagecontent']; ?>