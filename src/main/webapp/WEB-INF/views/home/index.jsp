<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/home5-cosmetic.html   11 Nov 2019 12:25:38 GMT -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home</title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Plugins CSS -->
<link rel="stylesheet" href="/assets/css/plugins.css">
<!-- Bootstap CSS -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<!-- Main Style CSS -->
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/custom.css">
<link rel="stylesheet" href="/assets/css/responsive.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>




<!-- angularjs -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
</head>




<body ng-app="shopping-app" ng-controller="shopping-ctrl"
	class="template-index belle home5-cosmetic">

	<div class="pageWrapper">
		<%@include file="../layout/_header.jsp"%>

		<!--Body Content-->
		<div id="page-content">
			<!--Home slider-->

			<div id="slider-home">
				<div id="carouselExampleCaptions" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="/images/banner/banner1.jpg" class="d-block w-100 "
								height="500px" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>Welcome to Our Store</h5>
								<p>Discover the latest trends and exclusive collections.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="/images/banner/banner2.jpg" class="d-block w-100 "
								height="500px" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>Summer Sale</h5>
								<p>Up to 50% off on selected items. Don't miss out!</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="/images/banner/banner3.jpg" class="d-block w-100 "
								height="500px" alt="...">
							<div class="carousel-caption d-none d-md-block">
								<h5>ABOUT</h5>
								<p>FROM FPT POLYTECHNIC DANANG</p>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>




			<!--End Home slider-->

			<!--Collection Tab slider-->

			<!--Collection Tab slider-->

			<!--Logo Slider-->

			<!--End Logo Slider-->

			<!--Featured Product-->
			<div class="product-rows section">
				<div class="container">
					<div class="row m-5">
						<div class="col-12 col-sm-12 col-md-12 col-lg-12 ">
							<div class="section-header text-center">
								<h2 class="h2">NEW BOOK 🔥</h2>
							</div>
						</div>
					</div>
					<div class="container-product-rw-custom">
							<c:forEach var="d" items="${db}" end="14">
								<div
									class="product-rw-custom">
									<div class="rw-product">
										<!-- start product image -->
										<a href="/product/detail/${d.product.id}"
											class=""> <!-- image --> 
											<img
											src="/images/product/${d.images[0]}" alt="${d.product.name}"
											title="${d.product.name}"> <!-- End image --> <!-- Hover image -->
											<h6>${d.product.name}</h6>
												<div class="product-price">
												<span class="price">${d.product.price} vnđ</span>
											</div>
											<button type="button" class="btn btn-success text-center">Xem ngay 🔥</button>
										</a>
										<!-- End product label -->
										<!-- End Variant -->
										<!-- End product details -->
									</div>
								</div>
							</c:forEach>


					</div>
				</div>
			</div>
			<!--End Featured Product-->

			<!--Store Feature-->
			<div class="store-feature section">
				<div class="container">
					<div class="row">
						<div class="col-12 col-sm-12 col-md-12 col-lg-12">
							<ul class="display-table store-info">
								<li class="display-table-cell"><i
									class="icon anm anm-truck-l text-warning"></i>
									<h5>FREE SHIPPING</h5> <span class="sub-text">Ship toàn
										quốc 25->30k 
										<br>
										Free Shipping đơn 500K </span></li>
								<li class="display-table-cell"><i
									class="icon anm anm-money-bill-ar text-warning"></i>
										<h5>HÌNH THỨC THANH TOÁN</h5> <span class="sub-text">Thu tiền tại nhà COD hoặc
										<br>
										Thanh toán Online</span></li>
								</li>
								<li class="display-table-cell"><i
									class="icon anm anm-comments-l text-warning"></i>
									<h5>HỖ TRỢ TƯ VẤN 24/7</h5> <span class="sub-text">Hotline CSKH 0385840395
										</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!--End Store Feature-->
		</div>
		<!--End Body Content-->

		<!--Footer-->
		<%@include file="../layout/_footer.jsp"%>
		<!--End Footer-->

		<!--Scoll Top-->
		<span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
		<!--End Scoll Top-->

		<!-- Including Jquery -->
		<script src="/assets/js/vendor/jquery-3.3.1.min.js"></script>
		<script src="/assets/js/vendor/modernizr-3.6.0.min.js"></script>
		<script src="/assets/js/vendor/jquery.cookie.js"></script>
		<script src="/assets/js/vendor/wow.min.js"></script>
		<!-- Incing Jascript -->
		<script src="/assets/js/bootstrap.min.js"></script>
		<script src="/assets/js/plugins.js"></script>
		<script src="/assets/js/popper.min.js"></script>
		<script src="/assets/js/lazysizes.js"></script>
		<script src="/assets/js/main.js"></script>
		<!-- Shopping cart -->
		<script src="/assets/js/shopping-cart.js"></script>
		<!--For Newsletter Popup-->
		<script>
			jQuery(document).mouseup(
					function(e) {
						var container = jQuery('#popup-container');
						if (!container.is(e.target)
								&& container.has(e.target).length === 0) {
							container.fadeOut();
							jQuery('#modalOverly').fadeIn(200);
							jQuery('#modalOverly').hide();
						}
					});
		</script>
		<!--End For Newsletter Popup-->
	</div>
</body>


</html>