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

}
