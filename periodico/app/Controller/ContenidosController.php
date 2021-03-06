<?php
App::uses('AppController', 'Controller');
/**
 * Contenidos Controller
 *
 * @property Contenido $Contenido
 */
class ContenidosController extends AppController {

	public $paginate = array('limit'=>3);
/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Contenido->recursive = 0;
		$this->set('contenidos', $this->paginate());
	}
	
	public function getLastCreated() {
		if($this->request->is('requested')){
			$this->Contenido->recursive = 0;
			$lastCreated = $this->Contenido->find('first', 
					array(
						'order'=>array('Contenido.created'=>'desc') // Obtiene el contenido más reciente
						)
					);
			return $lastCreated;
		}
	}
	public function noticias() {
		$this->layout = 'home';
		$this->Contenido->recursive = 0;

		$this->set('contenidos', $this->paginate('Contenido', array('Contenido.categoria_id' => 1)));
	}
/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->layout = 'home';
		$this->Contenido->id = $id;
		if (!$this->Contenido->exists()) {
			throw new NotFoundException(__('Invalid contenido'));
		}
		$this->set('contenido', $this->Contenido->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Contenido->create();
			if ($this->Contenido->save($this->request->data)) {
				$this->Session->setFlash(__('The contenido has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The contenido could not be saved. Please, try again.'));
			}
		}
		$categorias = $this->Contenido->Categoria->find('list');
		$this->set(compact('categorias'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		$this->Contenido->id = $id;
		if (!$this->Contenido->exists()) {
			throw new NotFoundException(__('Invalid contenido'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Contenido->save($this->request->data)) {
				$this->Session->setFlash(__('The contenido has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The contenido could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Contenido->read(null, $id);
		}
		$categorias = $this->Contenido->Categoria->find('list');
		$this->set(compact('categorias'));
	}

/**
 * delete method
 *
 * @throws MethodNotAllowedException
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->Contenido->id = $id;
		if (!$this->Contenido->exists()) {
			throw new NotFoundException(__('Invalid contenido'));
		}
		if ($this->Contenido->delete()) {
			$this->Session->setFlash(__('Contenido deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Contenido was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
