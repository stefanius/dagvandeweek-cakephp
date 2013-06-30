<h1>Wat is....</h1>
<p>Wat of Wie is nu toch een bepaalde dag of persoon? Wij geven daar graag antwoord op. Hieronder kunt u
    alle kennis vinden die u nodig heeft in het dagelijks leven, maar ook kennis die u verder helpt op deze site.</p>
<?php

foreach($Watislist as $Item){
    echo '<div class="well">';
    echo $this->Html->link(ucfirst($Item['Content']['title']), '/watis/'.$Item['Content']['urlpart'], array('rel'=>'follow'));
    echo '<br/>';
    echo $Item['Content']['description'];
    echo '</div>';
}
