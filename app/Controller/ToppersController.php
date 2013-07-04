<?php
App::uses('AppController', 'Controller');
/**
 * Toppers Controller
 *
 * @property Topper $Topper
 */
class ToppersController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Topper->recursive = 0;
		$this->set('toppers', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Topper->exists($id)) {
			throw new NotFoundException(__('Invalid topper'));
		}
		$options = array('conditions' => array('Topper.' . $this->Topper->primaryKey => $id));
		$this->set('topper', $this->Topper->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Topper->create();
			if ($this->Topper->save($this->request->data)) {
				$this->Session->setFlash(__('The topper has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The topper could not be saved. Please, try again.'));
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
		if (!$this->Topper->exists($id)) {
			throw new NotFoundException(__('Invalid topper'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Topper->save($this->request->data)) {
				$this->Session->setFlash(__('The topper has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The topper could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Topper.' . $this->Topper->primaryKey => $id));
			$this->request->data = $this->Topper->find('first', $options);
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
		$this->Topper->id = $id;
		if (!$this->Topper->exists()) {
			throw new NotFoundException(__('Invalid topper'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Topper->delete()) {
			$this->Session->setFlash(__('Topper deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Topper was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
