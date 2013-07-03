<?php
App::uses('AppModel', 'Model');
/**
 * History Model
 *
 */
class History extends AppModel {

/**
 * Use table
 *
 * @var mixed False or table name
 */
	public $useTable = 'history';

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'title';

}
