<!doctype html>
<html ><head>
	<style media="screen">
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

<h2 style="text-align: center">Data Transaksi</h2> <br> <br>
					<table id="customers">
							<tr>
								<th width="5px">No</th>
								<th>Kode Transaksi</th>
								<th>Tanggal Transaksi</th>
								<th>Batas Pembayaran</th>
								<th>Total</th>
								<th>Status</th>
							</tr>
							<?php $i = 1 ?>
							<?php foreach ($trx as $tr): ?>
							<tr>
								<td align="center">
									<?= $i ?>
								</td>
								<td><?= $tr->trx_id ?></td>
								<td>
									<?= date('d M Y', $tr->date_created) ?>,
									Jam <?= date('h:i', $tr->date_created) ?>
								</td>
								<td>
									<?php if ($tr->status == 0) {
										echo "Transaksi Selesai";
									} else { ?>
										<?php $payment_limit = $tr->date_created + 60*60*24 ?>
										<?= date('d M Y', $payment_limit) ?> <br>
										Jam <?= date('h:i', $payment_limit) ?>
									<?php }?>
								</td>
								<td>
									<?= "Rp ". number_format($tr->total,2,",",".") ?>
								</td>
								<?php if ($tr->status == 0) {
									$status = "Transaksi Selesai";
								} elseif ($tr->status == 1) {
									$status = "Menunggu Pembayaran";
								} elseif ($tr->status == 2) {
									$status = "Barang Sudah Dibayar";
								} elseif ($tr->status == 3) {
									$status = "Barang Belum Dikirim";
								} elseif ($tr->status == 4) {
									$status = "Barang Belum Diterima";
								}?>
								<td>
									<?= $status ?>
								</td>
							</tr>
							<?php $i++ ?>
							<?php endforeach; ?>
					</table>
					<br> <br>
					<b>Waktu Cetak: <?= date('d M Y', time()+60*60*6) ?>,
					Jam <?= date('h:i:s', time()+60*60*6) ?></b> <br>
					<b>Nama File: <?= $file_name ?></b>
</body></html>
