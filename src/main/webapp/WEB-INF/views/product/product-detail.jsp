<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/home5-cosmetic.html   11 Nov 2019 12:25:38 GMT -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title th:replace="${title}"></title>
<meta name="description" content="description">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" href="/assets/images/favicon.png" />
<!-- Plugins CSS -->
<link rel="stylesheet" href="/assets/css/plugins.css">
<!-- Bootstap CSS -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<!-- Main Style CSS -->
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/custom.css">
<link rel="stylesheet" href="/assets/css/responsive.css">
<!-- angularjs -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular-route.js"></script>
</head>

<body ng-app="shopping-app" ng-controller="shopping-ctrl"
	class="template-index belle home5-cosmetic">
	<div id="pre-loader">
		<img src="/assets/images/loader.gif" alt="Loading..." />
	</div>
	<div class="pageWrapper">
		<%@include file="../layout/_header.jsp"%>

		<!--Body Content-->
		<!--Body Content-->
		<div class="mt-5" id="page-content">
			<!--MainContent-->
			<div id="MainContent" class="main-content" role="main">
				<!--Breadcrumb-->
				<div class="bredcrumbWrap">
					<div class="container breadcrumbs" role="navigation"
						aria-label="breadcrumbs">
						<a href="/" title="Back to the home page">Home</a><span
							aria-hidden="true">›</span><span>${product.name}</span>
					</div>
				</div>
				<!--End Breadcrumb-->

				<div id="ProductSection-product-template"
					class="product-template__container prstyle1 container">


					<div class="product-single">
						<div class="row">

							<!-- Review imgages product -->
							<div class="col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="product-details-img">
									<div class="zoompro-wrap product-zoom-right pl-20">
										<div class="zoompro-span">
											<img class="blur-up lazyload zoompro"
												data-zoom-image="/images/product/${product.images}" alt=""
												src="/images/product/${product.images}" />
										</div>
										<div class="product-buttons">
											<a href="#" class="btn prlightbox" title="Zoom"><i
												class="icon anm anm-expand-l-arrows" aria-hidden="true"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!--End review imgages product -->

							<!-- Info Product -->
							<div class="col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="product-single__meta">
									<h1 class="product-single__title">${product.name}</h1>
									<div class="product-nav clearfix">
										<a href="#" class="next" title="Next"><i
											class="fa fa-angle-right" aria-hidden="true"></i></a>
									</div>
									<div class="prInfoRow">
										<div class="product-stock">
											<span class="instock ">In Stock</span>
										</div>
									</div>
									<p
										class="product-single__price product-single__price-product-template">
										<span
											class="product-price__price product-price__price-product-template">
											<span id="ProductPrice-product-template"><span
												class="money">${product.price}</span></span>
										</span>
									</p>
									<div class="product-single__description rte ">
										<p style="font-size: 1.2rem">${product.description}</p>
									</div>
									<form method="post" action="http://annimexweb.com/cart/add"
										id="product_form_10508262282" accept-charset="UTF-8"
										class="product-form product-form-product-template hidedropdown"
										enctype="multipart/form-data">

										<!-- Product Action -->
										<div class="product-action clearfix">
											<div class="product-form__item--submit">
												<button ng-click="cart.add(${product.id}) " type="button"
													name="add" class="btn product-form__cart-submit">
													<span id="AddToCartText-product-template">Thêm vào
														giỏ hàng</span>
												</button>
											</div>
										</div>
										<!-- End Product Action -->
									</form>
								</div>
							</div>
							<!-- End info Product -->
							<div class="related-product grid-products">
								<header class="section-header">
									<h2 class="section-header__title text-center h2">
										<span>Sản phẩm liên quan </span>
									</h2>
								</header>
								<div class="productPageSlider">
									<c:forEach var="productRL" items="${relatedListProduct}">
										<c:if test="${productRL.id ne product.id}">
											<div class="col-12 item">
												<!-- start product image -->
												<div class="product-image">
													<!-- start product image -->
													<a href="/product/detail/${productRL.id}"> <!-- image -->
														<img class="product-rcm primary blur-up lazyload"
														data-src="/images/product/${productRL.images}"
														src="/images/product/${p.images[0]}"
														alt="${productRL.name}" title="${productRL.name}"> <!-- End image -->
														<!-- Hover image --> <img class="hover blur-up lazyload"
														data-src="/images/product/${productRL.images}"
														src="/images/product/${productRL.images}"
														alt="${productRL.name}" title="${productRL.name}"> <!-- End hover image -->
													</a>
													<!-- end product image -->

													<!-- Start product button -->
													<form class="variants add">
														<button ng-click="cart.add(${productRL.id})"
															class="btn btn-addto-cart" type="button" tabindex="0">ADD
															TO CART</button>
													</form>
													<div class="button-set">
														<div class="wishlist-btn">
															<a class="wishlist add-to-wishlist"
																href="/favourite/add/${productRL.id}"
																title="Add to Wishlist"> <i
																class="icon anm anm-heart-l"></i>
															</a>
														</div>
													</div>
													<!-- end product button -->
												</div>
												<!-- end product image -->

												<!--start product details -->
												<div class="product-details text-center">
													<!-- product name -->
													<div class="product-name">
														<a href="/product/detail/${p.product.id}">${p.product.name}</a>
													</div>
													<!-- End product name -->
													<!-- product price -->
													<div class="product-price">
														<span class="price">${p.product.price}</span>
													</div>
													<!-- End product price -->

													<!-- Variant -->
													<ul class="swatches">
														<c:forEach var="i" items="${p.images}">
															<li class="swatch medium rounded"><img
																src="/images/product/${i}" alt="image" /></li>
														</c:forEach>
													</ul>
													<!-- End Variant -->
												</div>
												<!-- End product details -->
											</div>
										</c:if>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>

				</div>



				<!--MainContent-->
			</div>
			<!--End Body Content-->
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