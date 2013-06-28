<?php
App::uses('AppController', 'Controller');
/**
 * Contents Controller
 *
 * @property Content $Content
 */
class ContentsController extends AppController {

    public function beforeFilter() {
        parent::beforeFilter();
        $this->Auth->allow('load', 'whatis', 'nieuws', 'nieuwsindex');
    }   
/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Content->recursive = 0;
		$this->set('contents', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Content->exists($id)) {
			throw new NotFoundException(__('Invalid content'));
		}
		$options = array('conditions' => array('Content.' . $this->Content->primaryKey => $id));
		$this->set('content', $this->Content->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Content->create();
			if ($this->Content->save($this->request->data)) {
				$this->Session->setFlash(__('The content has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The content could not be saved. Please, try again.'));
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
		if (!$this->Content->exists($id)) {
			throw new NotFoundException(__('Invalid content'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Content->save($this->request->data)) {
				$this->Session->setFlash(__('The content has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The content could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Content.' . $this->Content->primaryKey => $id));
			$this->request->data = $this->Content->find('first', $options);
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
		$this->Content->id = $id;
		if (!$this->Content->exists()) {
			throw new NotFoundException(__('Invalid content'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Content->delete()) {
			$this->Session->setFlash(__('Content deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Content was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
 
/**
 * load method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function load($section = null, $urlpart = null) {
		if (is_null($section) || is_null($urlpart)) {
			throw new NotFoundException(__('Invalid content'));
		}
                
                $filter = array(
                    'conditions' => 
                            array('Content.urlpart' => $urlpart, 'Content.section' => $section) //array of conditions
                );              
		return $this->Content->find('first', $filter);
	}
        
        public function whatis($urlpart=null){
            $Content =  $this->load('watis', $urlpart);
            $description = $Content['Content']['description'];
            $robots = 'INDEX, FOLLOW';
            $this->set('title_for_layout',  $Content['Content']['title']);
            $this->set('canonical',  '/watis/'.$Content['Content']['urlpart'] );
            $this->set(compact('Content', 'description', 'robots'));
        }
        
        public function nieuws($urlpart=null){
            $Content =  $this->load('nieuws', $urlpart);
            $description = $Content['Content']['description'];
            $robots = 'INDEX, FOLLOW';
            $this->set('title_for_layout',  $Content['Content']['title']);
            $this->set('canonical',  '/nieuws/'.$Content['Content']['urlpart'] );
            $this->set(compact('Content', 'description', 'robots'));
        }
        
        public function nieuwsindex(){
            $page = 1;
            $offset=5;
            $filter = array(
                'conditions' => array('Content.section' => 'nieuws'),
                'order' => array('Content.created DESC'),
                'page' => $page,
                'offset' => $offset,
            );
            $Nieuwslist = $this->Content->find('all', $filter);
            $description = 'Het laatste nieuws van de dag. U leest het hier op Dag Van De Week. Nieuwsindex pagina '.$page.' met het nieuws van alle dag!';
            $this->set('title_for_layout',  'Nieuwsoverzicht - DagVanDeWeek.nl');
            $this->set('canonical',  '/watis' );
            $this->set(compact('Nieuwslist', 'description'));
        }
}
