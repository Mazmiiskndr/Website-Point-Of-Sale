<?php $this->load->view('include/header'); ?>
<?php $this->load->view('include/navbar'); ?>

<?php
$level = $this->session->userdata('ap_level');
?>

<div class="container">
	<div class="panel panel-default">
		<div class="panel-body">
			<h5><i class='fa fa-cogs fa-fw'></i> Control Panel</h5>
			<hr />

			<?php echo form_open('laporan', array('id' => 'FormLaporan')); ?>
			<div class="row text-center">
				<div class="form-horizontal">
					<h4>Transaksi</h4>
					<a href="<?= base_url('penjualan/transaksi') ?>" class="btn btn-primary" style='margin-left: 20px; width: 150px;'><i class="fa fa-file"> Transaksi</i></a>

					<a href="<?= base_url('penjualan/history') ?>" class="btn btn-info" style='margin-left: 20px; width: 150px;'><i class="fa fa-history"> History Penjualan</i></a>

					<a href="<?= base_url('penjualan/transaksi') ?>" class="btn btn-warning" style='margin-left: 20px; width: 150px;'><i class="fa fa-users"> Data Pelanggan</i></a>
			</div>
		</div>
		<hr>
		<div class="row text-center">
			<h4>Barang</h4>
				<div class="form-horizontal">

					<a href="<?= base_url('barang') ?>" class="btn btn-primary" style='margin-left: 20px; width: 150px;'><i class="fa fa-cubes"> Semua Barang</i></a>

					<a href="<?= base_url('barang/list-merek') ?>" class="btn btn-info" style='margin-left: 20px; width: 150px;'><i class="fa fa-cube"> List Merk</i></a>

					<a href="<?= base_url('barang/list-kategori') ?>" class="btn btn-warning" style='margin-left: 20px; width: 150px;'><i class="fa fa-list"> List Kategori</i></a>
			</div>
		</div>

		<hr>
		<div class="row text-center">
			<h4>Laporan</h4>
				<div class="form-horizontal">

					<a href="<?= base_url('laporan') ?>" class="btn btn-primary" style='margin-left: 20px; width: 150px;'><i class="fa fa-cubes"> Laporan</i></a>
			</div>
		</div>

		<hr>
		<div class="row text-center">
			<h4>List Users</h4>
				<div class="form-horizontal">

					<a href="<?= base_url('user') ?>" class="btn btn-primary" style='margin-left: 20px; width: 150px;'><i class="fa fa-cubes"> List Users</i></a>
			</div>
		</div>




		



			<?php echo form_close(); ?>

			<br />
			<div id='result'></div>
		</div>
	</div>
</div>
<p class='footer'><?php echo config_item('web_footer'); ?></p>

<link rel="stylesheet" type="text/css" href="<?php echo config_item('plugin'); ?>datetimepicker/jquery.datetimepicker.css"/>
<script src="<?php echo config_item('plugin'); ?>datetimepicker/jquery.datetimepicker.js"></script>
<script>
$('#tanggal_dari').datetimepicker({
	lang:'en',
	timepicker:false,
	format:'Y-m-d',
	closeOnDateSelect:true
});
$('#tanggal_sampai').datetimepicker({
	lang:'en',
	timepicker:false,
	format:'Y-m-d',
	closeOnDateSelect:true
});

$(document).ready(function(){
	$('#FormLaporan').submit(function(e){
		e.preventDefault();

		var TanggalDari = $('#tanggal_dari').val();
		var TanggalSampai = $('#tanggal_sampai').val();

		if(TanggalDari == '' || TanggalSampai == '')
		{
			$('.modal-dialog').removeClass('modal-lg');
			$('.modal-dialog').addClass('modal-sm');
			$('#ModalHeader').html('Oops !');
			$('#ModalContent').html("Tanggal harus diisi !");
			$('#ModalFooter').html("<button type='button' class='btn btn-primary' data-dismiss='modal' autofocus>Ok, Saya Mengerti</button>");
			$('#ModalGue').modal('show');
		}
		else
		{
			var URL = "<?php echo site_url('laporan/penjualan'); ?>/" + TanggalDari + "/" + TanggalSampai;
			$('#result').load(URL);
		}
	});
});
</script>

<?php $this->load->view('include/footer'); ?>