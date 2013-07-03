<h1><?php echo $pagetitle; ?></h1>
<p>Neem een kijkje in het verleden.</p>
<?php

foreach($History as $Item){
    echo '<div class="well">';
    echo $this->Html->link(ucfirst($Item['History']['title']), '/historie/'.$Item['History']['year'].'/'.$Item['History']['month'].'/'.$Item['History']['day'].'/'.$Item['History']['urlpart'], array('rel'=>'follow'));
    echo '<br/>';
    echo $Item['History']['description'];
    echo '</div>';
}
