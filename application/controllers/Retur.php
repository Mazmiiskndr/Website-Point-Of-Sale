<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Retur extends CI_Controller {

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
		$this->transaksi();
	}

	public function retur_pembelian()
	{
		$this->load->view('retur/retur_pembelian');
		
	}

	public function retur_penjualan()
	{
		$this->load->view('retur/retur_penjualan');
		
	}

}

/* End of file Retur.php */
/* Location: ./application/controllers/Retur.php */