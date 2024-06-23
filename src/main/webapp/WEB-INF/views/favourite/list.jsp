<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html  >
<html class="no-js" lang="en">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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



<body class="template-index belle home5-cosmetic" ng-app="shopping-app"
	ng-controller="shopping-ctrl">

	<div class="pageWrapper" id="favourite-page">
		<%@include file="../layout/_header.jsp"%>
		<div class="container" style="margin: 100px 0">
			<div class="row">
				<div class="col-12 col-sm-12 col-md-12 col-lg-12 ">
					<div class="section-header text-center">
						<h2 class="h2">Your book favourite 🔥</h2>
					</div>
				</div>
			</div>
			<div class="container-product-rw-custom">
				<c:forEach var="d" items="${FProduct}" end="14">
					<div class="product-rw-custom">
						<div class="rw-product">
							<button class="btn btn-danger rounded"
								style="height: 50px; width: 100%; position: relative; top: -20px">
								<a href="/favourite/remove/${d.id}" class="d-block">Xóa khỏi danh sách yêu thích</a>
							</button>
							<!-- start product image -->
							<a href="/product/detail/${d.product.id}" class=""> <!-- image -->
								<img src="/images/product/${d.product.images}"
								alt="${d.product.name}" title="${d.product.name}"> <!-- End image -->
								<!-- Hover image -->
								<h6>${d.product.name}</h6>
								<div class="product-price">
									<span class="price">${d.product.price} vnđ</span>
								</div>
								<button type="button" class="btn btn-success text-center">Xem
									ngay 🔥</button>
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




	<%@include file="../layout/_footer.jsp"%>
	</div>
	<script src="/assets/js/shopping-cart.js"></script>
</body>
</html>