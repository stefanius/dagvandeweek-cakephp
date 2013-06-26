<h1>Laatste Nieuws</h1>
<?php

foreach($Nieuwslist as $Item){
    echo '<div class="well">';
    echo $this->Html->link(ucfirst($Item['Content']['title']), '/nieuws/'.$Item['Content']['urlpart']);
    echo '<br/>';
    echo $Item['Content']['description'];
    echo '</div>';
}
