<!DOCTYPE html>
<html lang="en" dir="ltr"><head>
	<style>
	#customers, h2, b {
	  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}

	#customers td, #customers th {
	  border: 1px solid #ddd;
	  padding: 8px;
	}

	#customers tr:nth-child(even){background-color: #f2f2f2;}

	#customers tr:hover {background-color: #ddd;}

	#customers th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  text-align: left;
	  background-color: #37797b;
	  color: white;
	}
</style>
</head><body>
	<h2 style="text-align: center">Detail Transaksi</h2>
	<h2 style="text-align: center">Kode : <?= $trx['trx_id'] ?></h2> <br> <br>
	<?php $i=1 ?>
	<?php foreach ($trx_details as $td): ?>
	<table id="customers">
		<tr>
			<th colspan="2" align="center">Barang <?= $i ?></th>
		</tr>
		<tr>
			<td>Email Penjual</td>
			<td><?= $td->email ?></td>
		</tr>
		<tr>
			<td>No. Rekening</td>
			<td><?= $td->bill_numb ?></td>
		</tr>
		<tr>
			<td>Nama Barang</td>
			<td><?= $td->product_name ?></td>
		</tr>
		<tr>
			<td>Jumlah</td>
			<td><?= $td->amount ?></td>
		</tr>
		<tr>
			<td>Harga Satuan</td>
			<td><?= "Rp ". number_format($td->price,2,",",".") ?></td>
		</tr>
		<?php if ($td->td_status == 1) {
																		$status = "Menunggu Pembayaran";
																		$href = "#";
																		$status_action = "Teruskan Ke Penjual";
																	} elseif ($td->td_status == 2) {
																		$status = "Pembeli Sudah Melakukan Pembayaran";
																		$status_action = "Teruskan Ke Penjual";
																	} elseif ($td->td_status == 3) {
																		$status = "Penjual Sudah Menerima Pesanan";
																		$status_action = "";
																	} elseif ($td->td_status == 4) {
																		$status = "Barang Sudah Dikirim, Menunggu Konfirmasi Pembeli Menerima Barang";
																	} elseif ($td->td_status == 0) {
																		$status = "Transaksi Selesai";
																		$status_action = "Kembali";
																	}?>
		<tr>
			<td>Status</td>
			<td><?= $status ?></td>
		</tr>
	</table>
	<?php $i++; ?>
	<?php endforeach; ?>
	<br> <br>
	<b>Waktu Cetak: <?= date('d M Y', time()+60*60*6) ?>,
	Jam <?= date('h:i:s', time()+60*60*6) ?></b> <br>
	<b>Nama File: <?= $file_name ?></b>

</body></html>
