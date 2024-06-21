<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/home5-cosmetic.html   11 Nov 2019 12:25:38 GMT -->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Login</title>
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
		<%@include file="./layout/_header.jsp"%>

		<!--Body Content-->
		<div id="login">
			<!--Page Title-->
			<div class="page section-header text-center mt-5">
				<div class="page-title">
					<div class="wrapper">
						<h1 class="page-width">Đăng nhập</h1>
					</div>
				</div>
			</div>
			<!--End Page Title-->

			<div class="container rounded border border-warning p-2">
				<form method="post" action="/login" accept-charset="UTF-8">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Username</label>
						<input type="username" name="username" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp"
							placeholder="enter username...">
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Password</label>
						<input type="password" class="form-control" name="password"
							id="exampleInputPassword1" placeholder="enter passowrd">
					</div>
					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1"
							name="remember-me"> <label class="form-check-label"
							for="exampleCheck1">Check me out</label>
					</div>
					
					<button type="submit" class="btn btn-primary w-100 mx-auto">Submit</button>
					
					<div class="row">
						<div class="text-center col-12 col-sm-12 col-md-12 col-lg-12">
							<p class="mb-4">
								<a href="forgot-password" id="RecoverPassword">Quên mật
									khẩu?</a> &nbsp; | &nbsp; <a href="register"
									id="customer_register_link">Tạo tài khoản?</a>
							</p>
						</div>
					</div>
					<div class="col-12 col-sm-12 col-md-12 col-lg-12">
						<div class="form-group">
							<c:if test="${not empty message }">
								<i style="color: red; font-weight: bold">${message}</i>
							</c:if>
						</div>
					</div>
				</form>
			</div>

		</div>
		<!--End Body Content-->

		<!--Footer-->
		<%@include file="./layout/_footer.jsp"%>
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