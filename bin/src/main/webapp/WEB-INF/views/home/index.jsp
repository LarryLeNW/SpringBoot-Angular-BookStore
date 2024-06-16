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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



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
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/images/banner/banner1.jpg" class="d-block w-100 " height="500px" alt="...">
      <div class="carousel-caption d-none d-md-block">
       <h5>Welcome to Our Store</h5>
                        <p>Discover the latest trends and exclusive collections.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/images/banner/banner2.jpg" class="d-block w-100 " height="500px" alt="...">
      <div class="carousel-caption d-none d-md-block">
       <h5>Summer Sale</h5>
                        <p>Up to 50% off on selected items. Don't miss out!</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/images/banner/banner3.jpg" class="d-block w-100 " height="500px" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>ABOUT</h5>
        <p>FROM FPT POLYTECHNIC DANANG</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
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
					<div class="grid-products">
						<div class="row">
							<c:forEach var="d" items="${db}" end="14">
								<div
									class="col-6 col-sm-6 col-md-4 col-lg-4 item grid-view-item style2">
									<div class="grid-view_image">

										<!-- start product image -->
										<a href="/product/detail/${d.product.id}"
											class="grid-view-item__link"> <!-- image --> <img
											class="product grid-view-item__image primary blur-up lazyload "
											src="/images/product/${d.images[0]}" alt="${d.product.name}"
											title="${d.product.name}"> <!-- End image --> <!-- Hover image -->
											<img
											class="product grid-view-item__image hover blur-up lazyload"
											data-src="/images/product/${d.images[1]}"
											src="/images/product/${d.images[1]}" alt="${d.product.name}"
											title="${d.product.name}"> <!-- End hover image  --> <!-- product label -->
										</a>
										<!-- End product label -->
										<!-- end product image -->

										<!--start product details -->
										<div class="product-details hoverDetails text-center mobile">
											<!-- product name -->
											<div class="product-name">
												<a href="/product/detail/${d.product.id}">${d.product.name}</a>
											</div>
											<!-- End product name -->

											<!-- product price -->
											<div class="product-price">
												<span class="price">${d.product.price}</span>
											</div>
											<!-- End product price -->

											<!-- product button -->
											<div class="button-set">
												<!-- Start product button -->
												<form class="variants add" action="#" method="post">
													<button ng-click="cart.add(${d.product.id})"
														class="btn cartIcon btn-addto-cart" type="button"
														tabindex="0">
														<i class="icon anm anm-bag-l"></i>
													</button>
												</form>
												<div class="wishlist-btn">
													<a class="wishlist add-to-wishlist" href="wishlist.html">
														<i class="icon anm anm-heart-l"></i>
													</a>
												</div>
											</div>
											<!-- end product button -->
										</div>
										<!-- Variant -->
										
										<!-- End Variant -->
										<!-- End product details -->
									</div>
								</div>
							</c:forEach>


						</div>
					</div>
					<div class="col-12 col-sm-12 col-md-12 col-lg-12">
						<div class="section-header text-center">
							<a href="/product/list?kw=" class="btn"
								style="vertical-align: middle; text-align: center;">TẤT CẢ
								SẢN PHẨM</a>
						</div>
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
									class="icon anm anm-truck-l"></i>
									<h5>Miễn phí vận chuyển</h5> <span class="sub-text"> Đối
										với đơn từ 200k trong nội thành TPHCM </span></li>
								<li class="display-table-cell"><i
									class="icon anm anm-money-bill-ar"></i>
									<h5>Nhiều khuyến mãi hấp dẫn</h5> <span class="sub-text">
										Hàng ngàn ưu đãi cực sốc được cập nhật mỗi ngày </span></li>
								<li class="display-table-cell"><i
									class="icon anm anm-comments-l"></i>
									<h5>Sản phẩm chính hãng</h5> <span class="sub-text"> Cam
										kết hoàn tiền 300% giá trị sản phẩm nếu phát hiện hàng không
										chính hãng </span></li>
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