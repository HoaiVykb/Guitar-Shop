<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Fender Shop</title>
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
	<!-- Slick -->
	<link type="text/css" rel="stylesheet" href="css/slick.css" />
	<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
	<!-- nouislider -->
	<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />    
	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<link type="text/css" rel="stylesheet" href="css/accountbtn.css" />
	<link type="text/css" rel="stylesheet" href="/Content/CSS/style.css" />
	<link rel="stylesheet" href="./Content/CSS/style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
	<!-- font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&family=Bebas+Neue&family=Fira+Sans:ital,wght@1,300&display=swap" rel="stylesheet">
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	<style>
		#top-header {
			background-color: white;
		}

		#top-header ul li a {
			color: black;
			background-color: white;
		}
	</style>
</head>
<header style="background-color: white;">
	<div class="container-fluid csctn1 d-flex">
		<a href="/">
			<p>FENDER.COM</p>
		</a>
		<a href="#">
			<p>PLAY</p>
		</a>
		<a href="#">
			<p>TUNE</p>
		</a>
		<a class="" href="#">
			<p>BEGINERS</p>
		</a>
		<div class="d-flex ms-auto" style="">
			<ul class="header-links d-flex" style="display: flex;">
				<li><?php
					include "db.php";
					if (isset($_SESSION["uid"])) {
						$sql = "SELECT first_name FROM user_info WHERE user_id='$_SESSION[uid]'";
						$query = mysqli_query($con, $sql);
						$row = mysqli_fetch_array($query);
						echo '
                               <div class="dropdownn">
                                  <a href="#" class="dropdownn" data-toggle="modal" data-target="#myModal" ><i class="fa fa-user-o"></i> HI ' . $row["first_name"] . '</a>
                                  <div class="dropdownn-content">
                                    <a href="" data-toggle="modal" data-target="#profile"><i class="fa fa-user-circle" aria-hidden="true" ></i>My Profile</a>
                                    <a href="logout.php"  ><i class="fa fa-sign-in" aria-hidden="true"></i>Log out</a>
                                    
                                  </div>
                                </div>';
					} else {
						echo '
                                <div class="dropdownn">
                                  <a href="#" class="dropdownn" data-toggle="modal" data-target="#myModal" ><i class="fa fa-user-o"></i> My Account</a>
                                  <div class="dropdownn-content">
                                    <a href="" data-toggle="modal" data-target="#Modal_login"><i class="fa fa-sign-in" aria-hidden="true" ></i>Login</a>
                                    <a href="" data-toggle="modal" data-target="#Modal_register"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
                                    
                                  </div>
                                </div>';
					}
					?>

				</li>
			</ul>
		</div>
		<div id="top-header">
		</div>
	</div>
	<!-- MENU 2 -->
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<img class="cslogo" src="./Content/img/Fender_Logo (1).png" alt="">
			</div>
			<div class="col-md-6">
				<form class="d-flex">
					<div class="custom-input form-group has-search">
						<input class="cssearch form-control me-2" type="search" placeholder="Search" aria-label="Search">
						<i class="bi bi-search"></i>
					</div>
				</form>
			</div>
			<div class="col-md-3 d-flex">
				<div class="ms-auto d-flex">
					<div class="csiconm2">
						<a href=""><i class="iconm2 bi bi-geo-alt"></i></a>
					</div>
					<div class="csiconm2-3">

						<div class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
								<i class="iconm2-3 bi bi-cart3"></i>

							</a>
							<div class="cart-dropdown">
								<div class="cart-list" id="cart_product">


								</div>

								<div class="cart-btns">
									<a href="cart.php" style="width:100%;"><i class="fa fa-edit"></i>edit cart</a>

								</div>
							</div>
						</div>
					</div>
					<script src=""></script>
				</div>
			</div>
		</div>
	</div>
	</nav>
	<!-- MENU 3 -->
	<nav class="navbar navbar-expand-lg mt-3 ">
		<div class="container">
			<div class="container" id="get_category_home" style="">
				<a href="" id=></a>
			</div>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>
	 <!-- DEALS -->
	 <div class="container-fluid csdeal mb-0 pb-0">
            <p>New Year, New Gear <a href="">Shop now</a></p>
        </div>
</header>
</header>
<!-- /HEADER -->
<nav id='navigation' >
	<!-- container -->
	<div class="container mx-auto">
					<p id="get_category_home"> 
					</p>
	</div>
	<!-- responsive-nav -->

	<!-- /container -->
</nav>
<!-- NAVIGATION -->
<div class="modal fade" id="Modal_login" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>

			</div>
			<div class="modal-body">
				<?php
				include "login_form.php";
				?>

			</div>

		</div>

	</div>
</div>
<div class="modal fade" id="Modal_register" role="dialog">
	<div class="modal-dialog" style="">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>

			</div>
			<div class="modal-body">
				<?php
				include "register_form.php";

				?>

			</div>

		</div>

	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>