<?php
    $this->Html->addCrumb('Vandaag in het Verleden', '/historie');
    $this->Html->addCrumb($History['History']['year'], '/historie/'.$History['History']['year']);
    $this->Html->addCrumb($months[$History['History']['month']], '/historie/'.$History['History']['year'].'/'.$History['History']['month']);
    $this->Html->addCrumb($History['History']['day'].' '.$months[$History['History']['month']].' '.$year, '/historie/'.$History['History']['year'].'/'.$History['History']['month'].'/'.$History['History']['day']);
    $this->Html->addCrumb($History['History']['title'], '/historie/'.$History['History']['year'].'/'.$History['History']['month'].'/'.$History['History']['day'].'/'.$History['History']['urlpart']);
?>
<h1><?php echo $History['History']['title']; ?></h1>
<strong><?php echo $History['History']['day'].'/'.$History['History']['month'].'/'.$History['History']['year']; ?></strong>
<?php echo $History['History']['pagecontent']; ?>