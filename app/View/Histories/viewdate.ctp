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

<?php 

if(is_array($History['Marker'])){
    if(count($History['Marker']) > 0){
        echo $this->GoogleMap->map(array(
            'id' => 'map_history',
            'width' => '100%',
            'height' => '400px',
            'localize' => false,
            'marker' => false,
            'latitude' => $History['Marker'][0]['lat'],
            'longitude' => $History['Marker'][0]['lng'],
            'zoom' => 9,
        ));  
        foreach($History['Marker'] as $M){
            $marker_options = array(
                'showWindow' => true,
                'windowText' => $M['description'],
                'markerTitle' => $M['title'],
                'markerIcon' => 'http://labs.google.com/ridefinder/images/mm_20_purple.png',
                'markerShadow' => 'http://labs.google.com/ridefinder/images/mm_20_purpleshadow.png',
            ); 
            echo $this->GoogleMap->addMarker("map_history", $M['id'], array('latitude' => $M['lat'], 'longitude' => $M['lng']), $marker_options);
        }        
    }
}
?>