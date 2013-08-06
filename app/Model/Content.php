<?php
App::uses('AppModel', 'Model');
/**
 * Content Model
 *
 */
class Content extends AppModel {

/**
 * Use table
 *
 * @var mixed False or table name
 */
	public $useTable = 'content';
       

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'title';
        
       /* public function afterFind(array $results, boolean $primary = false){
            foreach ($results as $key => $val) {
                if (isset($val['Content']['index']) && isset($val['Content']['follow'])) {
                    $follow='NOFOLLOW';
                    $index='NOINDEX';
                    
                    if($val['Content']['follow']===1){
                        $follow='FOLLOW';
                    }
                    
                    if($val['Content']['index']===1){
                        $index='INDEX';
                    }  
                    $val['Content']['robots'] = $index.', '.$follow;
                }
            }            
        }*/

}
