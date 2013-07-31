<?php
    $this->Html->addCrumb('Overzicht Kalenders', '/kalender');
    $this->Html->addCrumb('Kalender '.$year, '/kalender/'.$year);
    $leapyear = date('L', mktime(1, 1, 1, 1, 1, $year));
?>

<h1>Kalender <?php echo $year;?></h1>
<?php
if(isset($Yearinfo['History']['pagecontent'])){
    echo $Yearinfo['History']['pagecontent'];
    
    if($leapyear==1){
        echo '<p>Ook leuk om te vermelden is dat '.$year.' een <strong>Schrikkeljaar</strong> is. '.$year.' telt dus 366 dagen, een dagje meer dan anders.</p>';
    }else{
        echo '<p>Ook leuk om te vermelden is dat '.$year.' GEEN <strong>Schrikkeljaar</strong> is. '.$year.' telt dus 365 dagen. In principe is het om de vier jaar een schrikkeljaar. Als het jaar door vier gedeeld kan worden, is het een schrikkeljaar. Al zijn er wel correcties en uitzonderingen op deze regel.</p>';
    }
    
}else{
    if($leapyear==1){
        echo '<p>Het jaar '.$year.' heeft 366 dagen. Dit komt omdat '.$year.' een schrikkeljaar is.</p>';
    }else{
        echo '<p>Het jaar '.$year.' is GEEN schrikkeljaar. Daarom heeft '.$year.' gewoon 365 dagen.</p></p>';
    }    
}

$months     = array('01' => 'Januari', '02' => 'Februari', '03' => 'Maart', '04' => 'April', '05' => 'Mei', '06' => 'Juni', '07' => 'Juli','08' => 'Augustus', '09' => 'September', '10' => 'Oktober', '11' => 'November', '12' => 'December');
$weekdays    = array('maandag','dinsdag','woensdag','donderdag','vrijdag','zaterdag','zondag');

foreach($months as $key=>$value){
    echo '<div class="kalender">';
    $days = range(1,date('t', mktime(0,0,0,$key,1,$year)));

    echo '<h2>'.$value.' '.$year.'</h2>';
    echo '<table>';
    echo '<tr><th>M</th><th>D</th><th>W</th><th>D</th><th>V</th><th>Z</th><th>Z</th></tr><tr>';
    $firstday = date('w', mktime(0,0,0,$key,1,$year));

    for($i = 1; $i <= 6; $i++)
    {
        if($i != $firstday)
        {
            echo '<td></td>';
        }else{
            break;
        }
    }

    foreach($days as $day)
    {
        $weekday = date('w', mktime(0,0,0,$key,$day,$year));

        if($weekday == 1)
        {
            echo '<tr>';
        } 

        echo '<td>';   
        
        if(isset($pastDays[$year][$key][$day])){
            echo $this->Html->link($day , '/historie/'.$year.'/'.$key.'/'.$day, array('rel'=>'follow'));
        }elseif( isset($pastDays[$year][$key]['0'.$day])){
            echo $this->Html->link($day , '/historie/'.$year.'/'.$key.'/0'.$day, array('rel'=>'follow'));
        }else{
            echo $day;
        }

        echo '</td>';  
        if($weekday == 0)
        {
            echo '</tr>';
        }    
    }

    echo '</table>';    
    echo '</div>';
}
