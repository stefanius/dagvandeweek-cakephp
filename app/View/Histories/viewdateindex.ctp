<h1><?php echo $pagetitle; ?></h1>
<p>Wat of Wie is nu toch een bepaalde dag of persoon? Wij geven daar graag antwoord op. Hieronder kunt u
    alle kennis vinden die u nodig heeft in het dagelijks leven, maar ook kennis die u verder helpt op deze site.</p>
<?php

foreach($History as $Item){
    echo '<div class="well">';
    echo $this->Html->link(ucfirst($Item['History']['title']), '/watis/'.$Item['History']['urlpart'], array('rel'=>'follow'));
    echo '<br/>';
    echo $Item['History']['description'];
    echo '</div>';
}
