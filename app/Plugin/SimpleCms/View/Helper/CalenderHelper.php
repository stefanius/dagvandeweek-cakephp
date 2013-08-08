<?php

class CalendarHelper extends AppHelper { 
    var $helpers = array('Html');
    var $months = array(
        '01'=>'Januari',
        '02'=>'Februari',
        '03'=>'Maart',
        '04'=>'April',
        '05'=>'Mei',
        '06'=>'Juni',
        '07'=>'Juli',
        '08'=>'Augustus',
        '09'=>'September',
        '10'=>'Oktober',
        '11'=>'November',
        '12'=>'December'
    );    

    var $days = array(
        '01'=>'Maandag',
        '02'=>'Dinsdag',
        '03'=>'Woensdag',
        '04'=>'Donderdag',
        '05'=>'Vrijdag',
        '06'=>'Zaterdag',
        '07'=>'Zondag',
    );    
    
    function generatemonth($month, $year){

    }
}
?>