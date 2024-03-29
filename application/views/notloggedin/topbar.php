<!-- Header -->
<header>
	<!-- Header desktop -->
	<div class="container-menu-desktop">
		<!-- Topbar -->
		<div class="top-bar">
			<div class="content-topbar flex-sb-m h-full container">
				<div class="left-top-bar">
					Silahkan daftar atau masuk untuk melakukan transaksi
				</div>

				<div class="right-top-bar flex-w h-full">


					<a href="<?= base_url() ?>" class="flex-c-m trans-04 p-lr-25">
						Masuk
					</a>

					<a href="<?= base_url('auth/registration') ?>" class="flex-c-m trans-04 p-lr-25 bg1 hov-btn1" >
						Daftar
					</a>
				</div>
			</div>
		</div>

		<div class="wrap-menu-desktop">
			<nav class="limiter-menu-desktop container">

				<!-- Logo desktop -->
				<a href="<?= base_url('auth/home') ?>" class="logo">
					<img src="<?= base_url('assets/') ?>images/logo.png" alt="IMG-LOGO" height="35px">
				</a>

				<!-- Menu desktop -->
				<div class="menu-desktop">
					<ul class="main-menu">
						<li class="active-menu">
							<a href="bindex.html">Home</a>
							<!-- <ul class="sub-menu">
								<li><a href="index.html">Homepage 1</a></li>
								<li><a href="home-02.html">Homepage 2</a></li>
								<li><a href="home-03.html">Homepage 3</a></li>
							</ul> -->
						</li>

						<li>
							<a href="product.html">Shop</a>
						</li>

						<li>
							<a href="shoping-cart.html">Features</a>
						</li>

						<li>
							<a href="blog.html">Blog</a>
						</li>

						<li>
							<a href="about.html">About</a>
						</li>

						<li>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</div>

				<!-- Icon header -->
				<div class="wrap-icon-header flex-w flex-r-m">
					<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
						<i class="zmdi zmdi-search"></i>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap-header-mobile">
		<!-- Logo moblie -->
		<div class="logo-mobile">
			<a href="index.html"><img src="<?= base_url('assets/') ?>images/logo.png" alt="IMG-LOGO"></a>
		</div>

		<!-- Icon header -->
		<div class="wrap-icon-header flex-w flex-r-m m-r-15">
			<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
				<i class="zmdi zmdi-search"></i>
			</div>
		</div>

		<!-- Button show menu -->
		<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
			<span class="hamburger-box">
				<span class="hamburger-inner"></span>
			</span>
		</div>
	</div>


	<!-- Menu Mobile -->
	<div class="menu-mobile">
		<ul class="topbar-mobile">
			<li>
				<div class="left-top-bar">
				</div>
			</li>

			<li>
				<div class="right-top-bar flex-w h-full">
					<a href="#" class="flex-c-m p-lr-10 trans-04">
						Masuk
					</a>

					<a href="#" class="flex-c-m trans-04 p-lr-25 bg1 hov-btn1">
						Daftar
					</a>
				</div>
			</li>
		</ul>

		<ul class="main-menu-m">
			<li>
				<a href="<?= base_url('auth/home') ?>">Home</a>
			</li>

			<li>
				<a href="product.html">Shop</a>
			</li>

			<li>
				<a href="shoping-cart.html">Features</a>
			</li>

			<li>
				<a href="blog.html">Blog</a>
			</li>

			<li>
				<a href="about.html">About</a>
			</li>

			<li>
				<a href="contact.html">Contact</a>
			</li>
		</ul>
	</div>

	<!-- Modal Search -->
	<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
		<div class="container-search-header">
			<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
				<img src="<?= base_url() ?>images/icons/icon-close2.png" alt="CLOSE">
			</button>

			<form class="wrap-search-header flex-w p-l-15" action="<?= base_url('auth/home') ?>" method="get">
				<button type="submit" class="flex-c-m trans-04" >
					<i class="zmdi zmdi-search"></i>
				</button>
				<input class="plh3" type="text" name="search" placeholder="Search">
			</form>
		</div>
	</div>
</header>
