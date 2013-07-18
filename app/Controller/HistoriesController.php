<?php
App::uses('AppController', 'Controller');
/**
 * Histories Controller
 *
 * @property History $History
 */
class HistoriesController extends AppController {

    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('viewdate');
       
    }   
    
    
/**
 * index method
 *
 * @return void
 */
    
	public function index() {
		$this->History->recursive = 0;
		$this->set('histories', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->History->exists($id)) {
			throw new NotFoundException(__('Invalid history'));
		}
		$options = array('conditions' => array('History.' . $this->History->primaryKey => $id));
		$this->set('history', $this->History->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->History->create();
			if ($this->History->save($this->request->data)) {
				$this->Session->setFlash(__('The history has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The history could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->History->exists($id)) {
			throw new NotFoundException(__('Invalid history'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->History->save($this->request->data)) {
				$this->Session->setFlash(__('The history has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The history could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('History.' . $this->History->primaryKey => $id));
			$this->request->data = $this->History->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->History->id = $id;
		if (!$this->History->exists()) {
			throw new NotFoundException(__('Invalid history'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->History->delete()) {
			$this->Session->setFlash(__('History deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('History was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
 
        private function Months(){
            $months = array(
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
            return $months;
        }
        
        public function viewdate($year=null, $month=null, $day=null, $urlpart=null){
            $conditions = array();
            $canonical = '/historie';
            $months=$this->Months();
            $singleitem = false;
            
            if(!is_null($year)){
                if(strlen($year)==4){
                    $conditions['History.year'] = $year;
                    $canonical.='/'.$conditions['History.year'];
                }else{
                    throw new BadRequestException('Het opgegeven jaartal dient uit 4 cijfers te bestaan.');
                }
            }
 
            if(!is_null($month)){
                if(strlen($month)==2){
                    $conditions['History.month'] = $month;
                    $canonical.='/'.$conditions['History.month'];
                }elseif(strlen($month)==1){
                    $conditions['History.month'] = '0'.$month;
                    $canonical.='/'.$conditions['History.month'];
                }else{
                    throw new BadRequestException('de opgegeven maand dient uit 2 cijfers te bestaan.');
                }
            }            

            if(!is_null($day)){
                if(strlen($day)==2){
                    $conditions['History.day'] = $day;
                    $canonical.='/'.$conditions['History.day'];
                }elseif(strlen($day)==1){
                    $conditions['History.day'] = '0'.$day;
                    $canonical.='/'.$conditions['History.day'];
                }else{
                    throw new BadRequestException('de opgegeven dag dient uit 2 cijfers te bestaan.');
                }
            }            

            if(!is_null($urlpart)){
                $conditions['History.urlpart'] = $urlpart;
                $canonical.='/'.$conditions['History.urlpart'];
                $singleitem=true;
            }              
            
            $filter = array(
                'conditions' => $conditions,
                'order' => array('History.created DESC')
            );
            
            if($singleitem==true){
                $History = $this->History->find('first', $filter);
                $this->set('title_for_layout', $History['History']['title']);
                $this->set('description',  substr( $History['History']['pagecontent'], 0,159));
                $this->set(compact('History','months',  'day', 'month', 'year'));
            }else{
                $History = $this->History->find('all', $filter);
                if(array_key_exists('History.day', $conditions)){
                    $pagetitle = 'Wat gebeurde er op '.((int)$conditions['History.day']).' '.$months[$conditions['History.month']].' '.$conditions['History.year'];
                    $description = $pagetitle.'? Lees hier de geschiedenis van '.((int)$conditions['History.day']).' '.$months[$conditions['History.month']].' '.$conditions['History.year'].' op Dag Van De Week. Lees over alle dagen uit '.$conditions['History.year'].'! Lees hier het nieuws van '.((int)$conditions['History.day']).' '.$months[$conditions['History.month']].'!';
                }elseif(array_key_exists('History.month', $conditions)){
                    $pagetitle = 'Wat gebeurde er in de maand '.$months[$conditions['History.month']].' '.$conditions['History.year'];
                    $description = $pagetitle.'? Lees alles wat er in '.$months[$conditions['History.month']].' '.$conditions['History.year'].' is gebeurd op Dag Van De Week. Het verleden in beeld. Al het nieuws uit '.$months[$conditions['History.month']].' '.$conditions['History.year'].' online!';
                }else{
                    $pagetitle = 'Wat gebeurde er in het jaar '.$conditions['History.year'];
                    $description = 'Lees hier alles uit '.$conditions['History.year'].'! Het nieuws en de geschiedenis van '.$conditions['History.year'].'! Lees alles op Dag Van De Week. Ook voor het jaar  '.$conditions['History.year'];
                }
                $this->set('title_for_layout', $pagetitle);
                $this->set(compact('History', 'pagetitle', 'description', 'canonical', 'months', 'day', 'month', 'year'));
                $this->render('viewdateindex');              
            }
        }
}
