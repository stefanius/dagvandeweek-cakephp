<h1>Laatste Nieuws</h1>
<?php

foreach($Nieuwslist as $Item){
    echo '<div class="well">';
    echo $this->Html->link(ucfirst($Item['Content']['title']), '/nieuws/'.$Item['Content']['urlpart'], array('rel'=>'follow'));
    echo '<br/>';
    echo $Item['Content']['description'];
    echo '</div>';
}
