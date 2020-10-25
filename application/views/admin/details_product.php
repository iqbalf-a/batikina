<!-- ============================================================== -->
<!-- wrapper  -->
<!-- ============================================================== -->
<div class="dashboard-wrapper">
	<div class="container-fluid  dashboard-content">
		<!-- ============================================================== -->
		<!-- pageheader -->
		<!-- ============================================================== -->
		<div class="row">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="page-header">
					<h2 class="pageheader-title">Data Transaksi</h2>
					<div class="page-breadcrumb">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="<?= base_url('admin') ?>" class="breadcrumb-link">Produk</a></li>
								<li class="breadcrumb-item" aria-current="page"><?= $product['product_name'] ?></li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- end pageheader -->
		<!-- ============================================================== -->
		<?= $this->session->flashdata('message'); ?>
		<div class="row">
                        <!-- ============================================================== -->
                        <!-- valifation types -->
                        <!-- ============================================================== -->

														<div class="col col-sm-10 col-lg-9 ">
																<a class="btn btn-primary" href="<?= base_url('admin/data_product') ?>" ><i class="fas fa-arrow-left"></i> Kembali</a>
														</div>
														<br> <br> <br>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="card">
                                <div class="card-body">
																	<div class="form-group row">
																			<label class="col-12 col-sm-3 col-form-label text-sm-right">Nama Penjual :</label>
																			<div class="col-12 col-sm-8 col-lg-6 col-form-label">
																					<?= $product['user_name'] ?>
																			</div>
																	</div>
																	<div class="form-group row">
																			<label class="col-12 col-sm-3 col-form-label text-sm-right">No. Rekening :</label>
																			<div class="col-12 col-sm-8 col-lg-6 col-form-label">
																					<?= $product['bill_numb'] ?>
																			</div>
																	</div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">Nama Barang:</label>
                                            <div class="col-12 col-sm-8 col-lg-6 col-form-label">
                                                <?= $product['product_name'] ?>
                                            </div>
                                        </div>
																				<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">Gambar :</label>
                                            <div class="col-12 col-sm-8 col-lg-6 col-form-label">
                                                <img src="<?= base_url('images/products/'.$product['image']) ?>" alt="" height="250px">
                                            </div>
                                        </div>
																				<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">Harga :</label>
                                            <div class="col-12 col-sm-8 col-lg-6 col-form-label">
                                                <?= "Rp ". number_format($product['price'],2,",",".") ?>
                                            </div>
                                        </div>
																				<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">Details :</label>
                                            <div class="col-12 col-sm-8 col-lg-6 col-form-label">
                                                <?= $product['details'] ?>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
