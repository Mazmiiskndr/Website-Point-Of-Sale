<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * ------------------------------------------------------------------------
 * CLASS NAME : Laporan
 * ------------------------------------------------------------------------
 *
 * @author     Moch Azmi Iskandar < azmiiskandar0@gmail.com>
 * @copyright  2021
 *
 */

class Menu extends MY_Controller 
{
	function __construct()
	{
		parent::__construct();
		$level 		= $this->session->userdata('ap_level');
		$allowed	= array('admin', 'keuangan');

		if( ! in_array($level, $allowed))
		{
			redirect();
		}
	}

	public function index()
	{
		$this->load->view('menu/index');
	}

	
}