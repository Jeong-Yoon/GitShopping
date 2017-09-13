<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Required Meta Tags Always Come First -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Favicon -->
<link rel="shortcut icon" href="../favicon.ico">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-line-pro/style.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/slick-carousel/slick/slick.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-hs/style.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/animate.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/hamburgers/hamburgers.min.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">

<!-- Revolution Slider -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/revolution-slider/revolution/css/settings.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/revolution-slider/revolution/css/layers.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/revolution-slider/revolution/css/navigation.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/revolution-slider/revolution-addons/typewriter/css/typewriter.css">

<!-- CSS Unify Theme -->
<link rel="stylesheet"
	href="resources/WB0412697/html/e-commerce/assets/css/styles.e-commerce.css">

<!-- CSS Customization -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/css/custom.css">
</head>
<body>
	<!-- Header -->
	<header id="js-header" class="u-header u-header--static"> <!-- Top Bar -->
	<div
		class="u-header__section u-header__section--dark g-bg-black g-transition-0_3 g-py-10">
		<div class="container">
			<div
				class="row flex-column flex-sm-row justify-content-between align-items-center text-uppercase g-font-weight-600 g-color-white g-font-size-12 g-mx-0--lg">
				<div class="col-auto hidden-sm-down">
					<ul class="list-inline mb-0">
						<li class="list-inline-item"><a href="#"
							class="g-color-white g-color-primary--hover g-pa-3"><i
								class="fa fa-facebook"></i></a></li>
						<li class="list-inline-item"><a href="#"
							class="g-color-white g-color-primary--hover g-pa-3"><i
								class="fa fa-twitter"></i></a></li>
						<li class="list-inline-item"><a href="#"
							class="g-color-white g-color-primary--hover g-pa-3"><i
								class="fa fa-tumblr"></i></a></li>
						<li class="list-inline-item"><a href="#"
							class="g-color-white g-color-primary--hover g-pa-3"><i
								class="fa fa-pinterest-p"></i></a></li>
						<li class="list-inline-item"><a href="#"
							class="g-color-white g-color-primary--hover g-pa-3"><i
								class="fa fa-google"></i></a></li>
					</ul>
				</div>

				<div class="col-auto g-pb-10 g-pb-0--sm">
					<i
						class="fa fa-phone g-font-size-18 g-valign-middle g-color-primary g-mr-10 g-mt-minus-2"></i>
					8 800 1234 4321
				</div>

				<div class="col-auto hidden-md-down">
					<i
						class="fa fa-clock-o g-font-size-18 g-valign-middle g-color-primary g-mr-10 g-mt-minus-2"></i>
					Mon-Fri: 9 AM - 5 PM
				</div>

				<div class="col-auto g-pos-rel g-pb-10 g-pb-0--sm">
					<ul class="list-inline g-overflow-hidden g-pt-1 g-mx-minus-4 mb-0">
						<li class="list-inline-item g-mx-4"><i
							class="icon-globe-alt g-font-size-18 g-valign-middle g-color-primary g-pos-rel g-top-minus-2 g-mr-10"></i>
							<a href="#" id="languages-dropdown-invoker-2"
							class="g-color-white g-color-primary--hover g-text-underline--none--hover"
							aria-controls="languages-dropdown-2" aria-haspopup="true"
							aria-expanded="false" data-dropdown-event="click"
							data-dropdown-target="#languages-dropdown-2"
							data-dropdown-type="css-animation" data-dropdown-duration="300"
							data-dropdown-hide-on-scroll="false"
							data-dropdown-animation-in="fadeIn"
							data-dropdown-animation-out="fadeOut"> English </a>
							<ul id="languages-dropdown-2"
								class="list-unstyled g-pos-abs g-left-0 g-bg-black g-width-160 g-pb-5 g-mt-10 g-z-index-2"
								aria-labelledby="languages-dropdown-invoker-2">
								<li><a
									class="d-block g-color-white g-color-primary--hover g-text-underline--none--hover g-py-5 g-px-20"
									href="#">English</a></li>
								<li><a
									class="d-block g-color-white g-color-primary--hover g-text-underline--none--hover g-py-5 g-px-20"
									href="#">Spanish</a></li>
								<li><a
									class="d-block g-color-white g-color-primary--hover g-text-underline--none--hover g-py-5 g-px-20"
									href="#">Russian</a></li>
								<li><a
									class="d-block g-color-white g-color-primary--hover g-text-underline--none--hover g-py-5 g-px-20"
									href="#">German</a></li>
							</ul></li>
						<li class="list-inline-item g-mx-4">|</li>
						<li class="list-inline-item g-mx-4"><a
							class="g-color-white g-color-primary--hover g-text-underline--none--hover"
							href="#">FAQ</a></li>
						<li class="list-inline-item g-mx-4">|</li>
						<c:if test="${empty sessionScope.m_id}">
							<li class="list-inline-item g-mx-4"><a
								class="g-color-white g-color-primary--hover g-text-underline--none--hover"
								href="${contextPath}/page-login">Login</a></li>
						</c:if>
						<c:if test="${not empty sessionScope.m_id}">
							<li class="list-inline-item g-mx-4"><a
								class="g-color-white g-color-primary--hover g-text-underline--none--hover"
								href="${contextPath}/page-login">Logout</a></li>
							<li class="list-inline-item g-mx-4"><a
								class="g-color-white g-color-primary--hover g-text-underline--none--hover"
								href="#"><c:if test="${msg == 'success'}">
										<h6>${sessionScope.m_id}</h6>
									</c:if></a></li>
						</c:if>
					</ul>
				</div>

				<div class="col-auto">

					<!-- Basket -->
					<div class="u-basket d-inline-block g-valign-middle g-pt-2">
						<a href="#" id="basket-bar-invoker"
							class="u-icon-v1 g-color-white g-text-underline--none--hover g-width-20 g-height-20 g-mr-40"
							aria-controls="basket-bar" aria-haspopup="true"
							aria-expanded="false" data-dropdown-event="hover"
							data-dropdown-target="#basket-bar"
							data-dropdown-type="css-animation" data-dropdown-duration="300"
							data-dropdown-hide-on-scroll="false"
							data-dropdown-animation-in="fadeIn"
							data-dropdown-animation-out="fadeOut"> <span
							class="u-badge-v1--sm g-color-white g-bg-primary g-rounded-50x">3</span>
							<i class="fa fa-shopping-cart"></i>
						</a>

						<div id="basket-bar"
							class="u-basket__bar u-dropdown--css-animation u-dropdown--hidden g-text-transform-none g-bg-black g-brd-top g-brd-2 g-brd-primary g-color-main g-mt-13"
							aria-labelledby="basket-bar-invoker">
							<div class="js-scrollbar g-height-280">
								<!-- Product -->
								<div class="u-basket__product g-brd-white-opacity-0_1">
									<div class="row align-items-center no-gutters">
										<div class="col-4 g-pr-20">
											<a href="#" class="u-basket__product-img"><img
												src="resources/WB0412697/html/assets/img-temp/150x150/img1.jpg"
												alt="Image Description"></a>
										</div>

										<div class="col-8">
											<h6 class="g-font-weight-600 g-mb-0">
												<a href="#"
													class="g-color-white g-color-white--hover g-text-underline--none--hover">Black
													Glasses</a>
											</h6>
											<small class="g-color-gray-dark-v5 g-font-size-14">1
												x $400.00</small>
										</div>
									</div>
									<button class="u-basket__product-remove" type="button">&times;</button>
								</div>
								<!-- End Product -->

								<!-- Product -->
								<div class="u-basket__product g-brd-white-opacity-0_1">
									<div class="row align-items-center no-gutters">
										<div class="col-4 g-pr-20">
											<a href="#" class="u-basket__product-img"><img
												src="resources/WB0412697/html/assets/img-temp/150x150/img2.jpg"
												alt="Image Description"></a>
										</div>

										<div class="col-8">
											<h6 class="g-font-weight-600 g-mb-0">
												<a href="#"
													class="g-color-white g-color-white--hover g-text-underline--none--hover">Black
													Glasses</a>
											</h6>
											<small class="g-color-gray-dark-v5 g-font-size-14">1
												x $400.00</small>
										</div>
									</div>
									<button class="u-basket__product-remove" type="button">&times;</button>
								</div>
								<!-- End Product -->

								<!-- Product -->
								<div class="u-basket__product g-brd-white-opacity-0_1">
									<div class="row align-items-center no-gutters">
										<div class="col-4 g-pr-20">
											<a href="#" class="u-basket__product-img"><img
												src="resources/WB0412697/html/assets/img-temp/150x150/img3.jpg"
												alt="Image Description"></a>
										</div>

										<div class="col-8">
											<h6 class="g-font-weight-600 g-mb-0">
												<a href="#"
													class="g-color-white g-color-white--hover g-text-underline--none--hover">Black
													Glasses</a>
											</h6>
											<small class="g-color-gray-dark-v5 g-font-size-14">1
												x $400.00</small>
										</div>
									</div>
									<button class="u-basket__product-remove" type="button">&times;</button>
								</div>
								<!-- End Product -->

								<!-- Product -->
								<div class="u-basket__product g-brd-white-opacity-0_1">
									<div class="row align-items-center no-gutters">
										<div class="col-4 g-pr-20">
											<a href="#" class="u-basket__product-img"><img
												src="resources/WB0412697/html/assets/img-temp/150x150/img4.jpg"
												alt="Image Description"></a>
										</div>

										<div class="col-8">
											<h6 class="g-font-weight-600 g-mb-0">
												<a href="#"
													class="g-color-white g-color-white--hover g-text-underline--none--hover">Black
													Glasses</a>
											</h6>
											<small class="g-color-gray-dark-v5 g-font-size-14">1
												x $400.00</small>
										</div>
									</div>
									<button class="u-basket__product-remove" type="button">&times;</button>
								</div>
								<!-- End Product -->
							</div>

							<div class="g-brd-top g-brd-white-opacity-0_1 g-pa-15 g-pb-20">
								<div
									class="d-flex flex-row align-items-center justify-content-between g-letter-spacing-1 g-font-size-16 g-mb-15">
									<strong class="text-uppercase g-font-weight-600 g-color-white">Subtotal</strong>
									<strong class="g-color-primary g-font-weight-600">$1200.00</strong>
								</div>

								<div
									class="d-flex flex-row align-items-center justify-content-between g-font-size-18">
									<a href="#"
										class="btn u-btn-outline-primary rounded-0 g-width-120">View
										Cart</a> <a href="#"
										class="btn u-btn-primary rounded-0 g-width-120">Checkout</a>
								</div>
							</div>
						</div>
					</div>
					<!-- End Basket -->

					<!-- Search -->
					<div class="d-inline-block g-valign-middle g-pos-rel g-top-minus-1">
						<a href="#"
							class="g-font-size-18 g-color-white g-color-primary--hover"
							aria-haspopup="true" aria-expanded="false"
							aria-controls="searchform-1" data-dropdown-target="#searchform-1"
							data-dropdown-type="css-animation" data-dropdown-duration="300"
							data-dropdown-animation-in="fadeInUp"
							data-dropdown-animation-out="fadeOutDown"> <i
							class="fa fa-search"></i>
						</a>

						<!-- Search Form -->
						<form id="searchform-1"
							class="u-searchform-v1 u-dropdown--css-animation u-dropdown--hidden g-bg-black g-pa-10 g-mt-10 g-box-shadow-none">
							<div class="input-group">
								<input
									class="form-control rounded-0 u-form-control border-0 g-py-10"
									type="search" placeholder="Enter Your Search Here...">

								<div class="input-group-addon p-0">
									<button
										class="btn rounded-0 btn-primary btn-md g-font-size-14 g-px-18"
										type="submit">Go</button>
								</div>
							</div>
						</form>
						<!-- End Search Form -->
					</div>
					<!-- End Search -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Top Bar -->
	<div
		class="u-header__section u-header__section--light g-bg-white g-transition-0_3 g-py-10">
		<nav class="js-mega-menu navbar navbar-toggleable-md">
		<div class="container">
			<!-- Responsive Toggle Button -->
			<button
				class="navbar-toggler navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-right-0"
				type="button" aria-label="Toggle navigation" aria-expanded="false"
				aria-controls="navBar" data-toggle="collapse" data-target="#navBar">
				<span class="hamburger hamburger--slider"> <span
					class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
				</span>
			</button>
			<!-- End Responsive Toggle Button -->

			<!-- Logo -->
			<a href="shoppingindex" class="navbar-brand"> <img
				src="resources/WB0412697/html/e-commerce/assets/img/logo/logo-1.png"
				alt="Image Description">
			</a>
			<!-- End Logo -->

			<!-- Navigation -->
			<div
				class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg"
				id="navBar">
				<ul class="navbar-nav text-uppercase g-font-weight-600 ml-auto">
					<li class="nav-item g-mx-10--lg g-mx-15--xl"><a
						href="shoppingindex" class="nav-link g-px-0">Home</a></li>

					<li class="nav-item hs-has-sub-menu g-mx-10--lg g-mx-15--xl">
						<a id="nav-link--pages" class="nav-link g-px-0" href="#"
						aria-haspopup="true" aria-expanded="false"
						aria-controls="nav-submenu--pages">Pages</a> <!-- Submenu -->
						<ul
							class="hs-sub-menu list-unstyled g-brd-top g-brd-primary g-brd-top-2 g-min-width-220 g-py-7 g-mt-22 g-mt-12--lg--scrolling"
							id="nav-submenu--pages" aria-labelledby="nav-link--pages">
							<li class="dropdown-item"><a class="nav-link"
								href="page-grid-filter-1.html">Grid Filter</a></li>
							<li class="dropdown-item"><a class="nav-link"
								href="page-list-filter-1.html">List Filter</a></li>
							<li class="dropdown-item"><a class="nav-link"
								href="page-product-1.html">Product</a></li>
							<li class="dropdown-item"><a class="nav-link"
								href="page-checkout-1.html">Checkout</a></li>
							<li class="dropdown-item"><a class="nav-link"
								href="page-login-1.html">Login</a></li>
							<li class="dropdown-item"><a class="nav-link"
								href="page-signup-1.html">Signup</a></li>
						</ul> <!-- End Submenu -->
					</li>

					<!-- Mega Menu Item -->
					<li class="hs-has-mega-menu nav-item g-mx-10--lg g-mx-15--xl"
						data-animation-in="fadeIn" data-animation-out="fadeOut"
						data-position="right"><a id="mega-menu-label-3"
						class="nav-link g-px-0" href="#" aria-haspopup="true"
						aria-expanded="false">Clothes <i
							class="hs-icon hs-icon-arrow-bottom g-font-size-11 g-ml-7"></i></a> <!-- Mega Menu -->
						<div
							class="w-100 hs-mega-menu u-shadow-v11 g-text-transform-none g-font-weight-400 g-brd-top g-brd-primary g-brd-top-2 g-bg-white g-pa-30 g-mt-17 g-mt-7--lg--scrolling"
							aria-labelledby="mega-menu-label-3">
							<div class="row">
								<div class="col-sm-6 col-lg-3 g-mb-30 g-mb-0--sm">
									<figure class="g-px-10">
									<div class="g-pos-rel g-mb-20">
										<a href="#"><img class="img-fluid"
											src="resources/WB0412697/html/assets/img-temp/480x700/img1.jpg"
											alt="Image Description"></a>
										<!-- Ribbon -->
										<figcaption> <span
											class="u-ribbon-v1 g-width-40 g-height-40 g-color-white g-bg-primary g-font-size-11 text-center text-uppercase g-rounded-50x g-top-10 g-left-10 g-px-2 g-py-12">New</span>
										</figcaption>
										<!-- End Ribbon -->
									</div>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="#" tabindex="0"> Summer shorts </a>
											</h4>
											<a class="d-inline-block g-color-gray-dark-v5 g-font-size-13"
												href="#" tabindex="0">Man</a> <span
												class="d-block g-color-black g-font-size-17">$52.00</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="#" tabindex="0" data-toggle="tooltip"
												data-placement="top" data-original-title="Add to Cart">
													<i class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="#" tabindex="0" data-toggle="tooltip"
												data-placement="top" data-original-title="Add to Wishlist">
													<i class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									</figure>
								</div>

								<div class="col-sm-6 col-lg-3 g-mb-30 g-mb-0--sm">
									<figure class="g-px-10">
									<div class="g-pos-rel g-mb-20">
										<a href="#"><img class="img-fluid"
											src="resources/WB0412697/html/assets/img-temp/480x700/img2.jpg"
											alt="Image Description"></a>
									</div>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="#" tabindex="0"> Stylish shirt </a>
											</h4>
											<a class="d-inline-block g-color-gray-dark-v5 g-font-size-13"
												href="#" tabindex="0">Woman</a> <s
												class="d-block g-color-lightred g-font-weight-500 g-font-size-13">$101.00</s>
											<span class="d-block g-color-black g-font-size-17">$99.00</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="#" tabindex="0" data-toggle="tooltip"
												data-placement="top" data-original-title="Add to Cart">
													<i class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="#" tabindex="0" data-toggle="tooltip"
												data-placement="top" data-original-title="Add to Wishlist">
													<i class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									</figure>
								</div>

								<div class="col-sm-6 col-lg-3 g-mb-30 g-mb-0--sm">
									<figure class="g-px-10">
									<div class="g-pos-rel g-mb-20">
										<a href="#"><img class="img-fluid"
											src="resources/WB0412697/html/assets/img-temp/480x700/img3.jpg"
											alt="Image Description"></a>

										<!-- Ribbon -->
										<figcaption> <span
											class="u-ribbon-v1 g-width-40 g-height-40 g-color-white g-bg-lightred g-font-size-11 text-center text-uppercase g-rounded-50x g-top-10 g-left-10 g-px-2 g-py-12">Sold</span>
										</figcaption>
										<!-- End Ribbon -->
									</div>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="#" tabindex="0"> Classic jacket </a>
											</h4>
											<a class="d-inline-block g-color-gray-dark-v5 g-font-size-13"
												href="#" tabindex="0">Man</a> <span
												class="d-block g-color-black g-font-size-17">$49.99</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="#" tabindex="0" data-toggle="tooltip"
												data-placement="top" data-original-title="Add to Cart">
													<i class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="#" tabindex="0" data-toggle="tooltip"
												data-placement="top" data-original-title="Add to Wishlist">
													<i class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									</figure>
								</div>

								<div class="col-sm-6 col-lg-3 g-mb-30 g-mb-0--sm">
									<figure class="g-px-10">
									<div class="g-pos-rel g-mb-20">
										<a href="#"><img class="img-fluid"
											src="resources/WB0412697/html/assets/img-temp/480x700/img4.jpg"
											alt="Image Description"></a>
									</div>

									<div class="media">
										<!-- Product Info -->
										<div class="d-flex flex-column">
											<h4 class="h6 g-color-black mb-1">
												<a class="u-link-v5 g-color-black g-color-primary--hover"
													href="#" tabindex="0"> Wool lined parka </a>
											</h4>
											<a class="d-inline-block g-color-gray-dark-v5 g-font-size-13"
												href="#" tabindex="0">Woman</a> <span
												class="d-block g-color-black g-font-size-17">$82.37</span>
										</div>
										<!-- End Product Info -->

										<!-- Products Icons -->
										<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="#" tabindex="0" data-toggle="tooltip"
												data-placement="top" data-original-title="Add to Cart">
													<i class="icon-finance-100 u-line-icon-pro"></i>
											</a></li>
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
												href="#" tabindex="0" data-toggle="tooltip"
												data-placement="top" data-original-title="Add to Wishlist">
													<i class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										<!-- End Products Icons -->
									</div>
									</figure>
								</div>
							</div>
						</div> <!-- End Mega Menu --></li>
					<!-- End Mega Menu Item -->

					<!-- Mega Menu Item -->
					<li class="hs-has-mega-menu nav-item g-mx-10--lg g-mx-15--xl"
						data-animation-in="fadeIn" data-animation-out="fadeOut"
						data-position="right"><a id="mega-menu-label-2"
						class="nav-link g-px-0" href="#" aria-haspopup="true"
						aria-expanded="false">Collections <i
							class="hs-icon hs-icon-arrow-bottom g-font-size-11 g-ml-7"></i></a> <!-- Mega Menu -->
						<div
							class="w-100 hs-mega-menu u-shadow-v11 g-text-transform-none g-font-weight-400 g-brd-top g-brd-primary g-brd-top-2 g-bg-white g-pa-30 g-mt-17 g-mt-7--lg--scrolling"
							aria-labelledby="mega-menu-label-2">
							<div class="row align-items-stretch">
								<div class="col-md-4 g-mb-30 g-mb-0--md">
									<article class="u-block-hover"> <img
										class="w-100 u-block-hover__main--zoom-v1 g-mb-minus-8"
										src="resources/WB0412697/html/assets/img-temp/650x850/img1.jpg"
										alt="Image Description">
									<div class="g-pos-abs g-bottom-30 g-left-30">
										<span class="d-block g-color-black">Collections</span>
										<h2 class="h1 mb-0 g-color-black">Women</h2>
									</div>
									<a class="u-link-v2" href="#"></a> </article>
								</div>

								<div class="col-md-4 g-mb-30 g-mb-0--md">
									<article class="u-block-hover"> <img
										class="w-100 u-block-hover__main--zoom-v1 g-mb-minus-8"
										src="resources/WB0412697/html/assets/img-temp/650x850/img2.jpg"
										alt="Image Description">
									<div class="g-pos-abs g-bottom-30 g-left-30">
										<span class="d-block g-color-black">Collections</span>
										<h2 class="h1 mb-0 g-color-black">Children</h2>
									</div>
									<a class="u-link-v2" href="#"></a> </article>
								</div>

								<div class="col-md-4 g-mb-30 g-mb-0--md">
									<article class="u-block-hover"> <img
										class="w-100 u-block-hover__main--zoom-v1 g-mb-minus-8"
										src="resources/WB0412697/html/assets/img-temp/650x850/img3.jpg"
										alt="Image Description">
									<div class="g-pos-abs g-bottom-30 g-left-30">
										<span class="d-block g-color-black">Collections</span>
										<h2 class="h1 mb-0 g-color-black">Men</h2>
									</div>
									<a class="u-link-v2" href="#"></a> </article>
								</div>
							</div>
						</div> <!-- End Mega Menu --></li>
					<!-- End Mega Menu Item -->

					<!-- Mega Menu Item -->
					<li class="hs-has-mega-menu nav-item g-mx-10--lg g-mx-15--xl"
						data-animation-in="fadeIn" data-animation-out="fadeOut"
						data-position="right"><a id="mega-menu-label-6"
						class="nav-link g-px-0" href="#" aria-haspopup="true"
						aria-expanded="false">Promo <i
							class="hs-icon hs-icon-arrow-bottom g-font-size-11 g-ml-7"></i></a> <!-- Mega Menu -->
						<div
							class="w-100 hs-mega-menu u-shadow-v11 g-text-transform-none g-font-weight-400 g-brd-top g-brd-primary g-brd-top-2 g-bg-white g-mt-17 g-mt-7--lg--scrolling"
							aria-labelledby="mega-menu-label-6">
							<div class="row align-items-center no-gutters">
								<div
									class="col-sm-7 col-lg-8 u-block-hover g-bg-size-cover g-min-height-500 g-flex-centered"
									data-bg-img-src="resources/WB0412697/html/assets/img-temp/1200x800/img1.jpg"
									style="background-image: url(resources/WB0412697/html/assets/img-temp/1200x800/img1.jpg);">
									<div class="g-flex-centered-item text-right g-pa-50">
										<h2
											class="g-color-white g-font-weight-700 g-font-size-50 text-uppercase g-line-height-1 mb-4">
											Summer<br>Collection
										</h2>
										<span
											class="u-link-v5 g-color-black g-color-primary--hover g-font-size-18">Shop
											Now</span>
									</div>

									<a class="u-link-v2" href="#"></a>
								</div>

								<div
									class="col-sm-5 col-lg-4 u-block-hover g-bg-size-cover g-min-height-500 g-flex-centered"
									data-bg-img-src="resources/WB0412697/html/assets/img/bg/secondary.png"
									style="background-image: url(resources/WB0412697/html/assets/img/bg/secondary.png);">
									<div class="text-center">
										<img class="img-fluid mb-3"
											src="resources/WB0412697/html/assets/img-temp/500x320/img4.png"
											alt="Image Description">
										<h3
											class="h5 u-link-v5 g-color-primary--hover g-font-weight-400 mb-3">Sneaker
											Shoes for Man</h3>
										<span class="g-color-primary g-font-weight-700 g-font-size-20">$45.00</span>
									</div>

									<a class="u-link-v2" href="#"></a>
								</div>
							</div>
						</div> <!-- End Mega Menu --></li>
					<!-- End Mega Menu Item -->

					<!-- Mega Menu Item -->
					<li class="hs-has-mega-menu nav-item g-mx-10--lg g-mx-15--xl"
								data-animation-in="fadeIn" data-animation-out="fadeOut"
								data-position="right"><a id="mega-menu-label-4"
								class="nav-link g-px-0" href="#" aria-haspopup="true"
								aria-expanded="false">Catalogue <i
									class="hs-icon hs-icon-arrow-bottom g-font-size-11 g-ml-7"></i></a>

								<!-- Mega Menu -->
								<div
									class="w-100 hs-mega-menu u-shadow-v11 g-text-transform-none g-font-weight-400 g-brd-top g-brd-primary g-brd-top-2 g-bg-white g-pa-30 g-mt-17 g-mt-7--lg--scrolling"
									aria-labelledby="mega-menu-label-5">
									<div class="row">
										<div class="col-sm-6 col-md-3 g-mb-30 g-mb-0--sm">

											<div>
												<h4 class="h5 text-uppercase g-font-weight-600">
													<a href="#" style="text-decoration: none"><span
														style="color: #000000;">NEW</span>
												</h4>

												<h4 class="h5 text-uppercase g-font-weight-600">
													<a href="#" style="text-decoration: none"><span
														style="color: #000000;">BEST 100</span>
												</h4>
												<h4 class="h5 text-uppercase g-font-weight-600">
													<a href="#" style="text-decoration: none"><span
														style="color: #000000;">REVIEW 30</span>
												</h4>
											</div>
										</div>
										<div class="col-sm-6 col-md-3 g-mb-30 g-mb-0--sm">
											<h4 class="h5 text-uppercase g-font-weight-600">
												<a href="${contextPath}/top-list/all" style="text-decoration: none"><span
													style="color: #000000;">Top</span>
											</h4>
											<ul class="list-unstyled g-mb-25">
												<li class="g-mb-5"><a class="g-color-main" href="#">New</a></li>
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/top-list/tshirt">T-shirt
														&amp; Jackets</a></li>
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/top-list/mtmh">맨투맨/후드</a></li>
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/top-list/knit">니트</a></li>
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/top-list/blouse">블라우스</a>
													<span class="u-label g-bg-primary g-ml-10">New</span></li>
											</ul>

											<h4 class="h5 text-uppercase g-font-weight-600">
											<a href="${contextPath}/bottom-list/all" style="text-decoration: none"><span
													style="color: #000000;">Bottom</span></h4>
											<ul class="list-unstyled">
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/bottom-list/spants">short
														pants</a></li>
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/bottom-list/lpants">long
														pants</a></li>
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/bottom-list/training">training</a></li>
											</ul>
										</div>

										<div class="col-sm-6 col-md-3 g-mb-30 g-mb-0--sm">
											<h4 class="h5 text-uppercase g-font-weight-600">
												<a href="outer-list" style="text-decoration: none"><span
													style="color: #000000;">Outer</span></a>
											</h4>
											<h4 class="h5 text-uppercase g-font-weight-600">
												<a href="onepiece-list" style="text-decoration: none"><span
													style="color: #000000;">OPS</span></a>
											</h4>
											<h4 class="h5 text-uppercase g-font-weight-600">
												<a href="shoes-list" style="text-decoration: none"><span
													style="color: #000000;">Shoes</span></a>
											</h4>
										</div>

										<div class="col-sm-6 col-md-3 g-mb-30 g-mb-0--sm">
											<h4 class="h5 text-uppercase g-font-weight-600"><a href="${contextPath}/acc-list/all" style="text-decoration: none"><span
													style="color: #000000;">ACC</span></h4>
											<ul class="list-unstyled g-mb-25">
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/acc-list/earings">귀걸이</a></li>
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/acc-list/necklaces">목걸이</a></li>
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/acc-list/bracelets">팔찌
												</a></li>
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/acc-list/socks">양말
												</a></li>
												<li class="g-mb-5"><a class="g-color-main" href="${contextPath}/acc-list/belts">벨트</a></li>
											</ul>
										</div>
									</div>
								</div> <!-- End Mega Menu --></li>
					
					<!-- End Mega Menu Item -->

					<!-- Mega Menu Item -->
					<li class="hs-has-mega-menu nav-item g-ml-10--lg g-ml-15--xl"
						data-animation-in="fadeIn" data-animation-out="fadeOut"
						data-position="right"><a id="mega-menu-label-5"
						class="nav-link g-px-0" href="#" aria-haspopup="true"
						aria-expanded="false">Sales <i
							class="hs-icon hs-icon-arrow-bottom g-font-size-11 g-ml-7"></i></a> <!-- Mega Menu -->
						<div
							class="w-100 hs-mega-menu u-shadow-v11 g-text-transform-none g-font-weight-400 g-brd-top g-brd-primary g-brd-top-2 g-bg-white g-pa-30 g-mt-17 g-mt-7--lg--scrolling"
							aria-labelledby="mega-menu-label-5">
							<div class="row">
								<div class="col-md-6 col-lg-4 g-px-10">
									<!-- Article -->
									<article
										class="media g-brd-around g-brd-gray-light-v4 g-bg-white rounded g-pa-10 g-mb-20">
									<!-- Article Image -->
									<div class="g-max-width-100 g-mr-15">
										<img class="d-flex w-100"
											src="resources/WB0412697/html/assets/img-temp/150x150/img1.jpg"
											alt="Image Description">
									</div>
									<!-- End Article Image --> <!-- Article Info -->
									<div class="media-body align-self-center">
										<h4 class="h5 g-mb-7">
											<a
												class="g-color-black g-color-primary--hover g-text-underline--none--hover"
												href="#">Glasses</a>
										</h4>
										<a
											class="d-inline-block g-color-gray-dark-v5 g-font-size-13 g-mb-10"
											href="#">Accessories</a>
										<!-- End Article Info -->

										<!-- Article Footer -->
										<footer class="d-flex justify-content-between g-font-size-16">
										<span class="g-color-black g-line-height-1">$22.00</span>
										<ul
											class="list-inline g-color-gray-light-v2 g-font-size-14 g-line-height-1">
											<li
												class="list-inline-item align-middle g-brd-right g-brd-gray-light-v3 g-pr-10 g-mr-6">
												<a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Cart"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a>
											</li>
											<li class="list-inline-item align-middle"><a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Wishlist"> <i
													class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										</footer>
										<!-- End Article Footer -->
									</div>
									</article>
									<!-- End Article -->
								</div>

								<div class="col-md-6 col-lg-4 g-px-10">
									<!-- Article -->
									<article
										class="media g-brd-around g-brd-gray-light-v4 g-bg-white rounded g-pa-10 g-mb-20">
									<!-- Article Image -->
									<div class="g-max-width-100 g-mr-15">
										<img class="d-flex w-100"
											src="resources/WB0412697/html/assets/img-temp/150x150/img2.jpg"
											alt="Image Description">
									</div>
									<!-- End Article Image --> <!-- Article Info -->
									<div class="media-body align-self-center">
										<h4 class="h5 g-mb-7">
											<a
												class="g-color-black g-color-primary--hover g-text-underline--none--hover"
												href="#">Gloves</a>
										</h4>
										<a
											class="d-inline-block g-color-gray-dark-v5 g-font-size-13 g-mb-10"
											href="#">Accessories</a>
										<!-- End Article Info -->

										<!-- Article Footer -->
										<footer class="d-flex justify-content-between g-font-size-16">
										<span class="g-color-black g-line-height-1">$55.00</span>
										<ul
											class="list-inline g-color-gray-light-v2 g-font-size-14 g-line-height-1">
											<li
												class="list-inline-item align-middle g-brd-right g-brd-gray-light-v3 g-pr-10 g-mr-6">
												<a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Cart"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a>
											</li>
											<li class="list-inline-item align-middle"><a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Wishlist"> <i
													class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										</footer>
										<!-- End Article Footer -->
									</div>
									</article>
									<!-- End Article -->
								</div>

								<div class="col-md-6 col-lg-4 g-px-10">
									<!-- Article -->
									<article
										class="media g-brd-around g-brd-gray-light-v4 g-bg-white rounded g-pa-10 g-mb-20">
									<!-- Article Image -->
									<div class="g-max-width-100 g-mr-15">
										<img class="d-flex w-100"
											src="resources/WB0412697/html/assets/img-temp/150x150/img3.jpg"
											alt="Image Description">
									</div>
									<!-- End Article Image --> <!-- Article Info -->
									<div class="media-body align-self-center">
										<h4 class="h5 g-mb-7">
											<a
												class="g-color-black g-color-primary--hover g-text-underline--none--hover"
												href="#">Chukka Shoes</a>
										</h4>
										<a
											class="d-inline-block g-color-gray-dark-v5 g-font-size-13 g-mb-10"
											href="#">Footwear</a>
										<!-- End Article Info -->

										<!-- Article Footer -->
										<footer class="d-flex justify-content-between g-font-size-16">
										<span class="g-color-black g-line-height-1">$55.00</span>
										<ul
											class="list-inline g-color-gray-light-v2 g-font-size-14 g-line-height-1">
											<li
												class="list-inline-item align-middle g-brd-right g-brd-gray-light-v3 g-pr-10 g-mr-6">
												<a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Cart"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a>
											</li>
											<li class="list-inline-item align-middle"><a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Wishlist"> <i
													class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										</footer>
										<!-- End Article Footer -->
									</div>
									</article>
									<!-- End Article -->
								</div>

								<div class="col-md-6 col-lg-4 g-px-10">
									<!-- Article -->
									<article
										class="media g-brd-around g-brd-gray-light-v4 g-bg-white rounded g-pa-10 g-mb-20">
									<!-- Article Image -->
									<div class="g-max-width-100 g-mr-15">
										<img class="d-flex w-100"
											src="resources/WB0412697/html/assets/img-temp/150x150/img4.jpg"
											alt="Image Description">
									</div>
									<!-- End Article Image --> <!-- Article Info -->
									<div class="media-body align-self-center">
										<h4 class="h5 g-mb-7">
											<a
												class="g-color-black g-color-primary--hover g-text-underline--none--hover"
												href="#">Shoes</a>
										</h4>
										<a
											class="d-inline-block g-color-gray-dark-v5 g-font-size-13 g-mb-10"
											href="#">Footwear</a>
										<!-- End Article Info -->

										<!-- Article Footer -->
										<footer class="d-flex justify-content-between g-font-size-16">
										<span class="g-color-black g-line-height-1">$55.00</span>
										<ul
											class="list-inline g-color-gray-light-v2 g-font-size-14 g-line-height-1">
											<li
												class="list-inline-item align-middle g-brd-right g-brd-gray-light-v3 g-pr-10 g-mr-6">
												<a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Cart"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a>
											</li>
											<li class="list-inline-item align-middle"><a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Wishlist"> <i
													class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										</footer>
										<!-- End Article Content -->
									</div>
									</article>
									<!-- End Article -->
								</div>

								<div class="col-md-6 col-lg-4 g-px-10">
									<!-- Article -->
									<article
										class="media g-brd-around g-brd-gray-light-v4 g-bg-white rounded g-pa-10 g-mb-20">
									<!-- Article Image -->
									<div class="g-max-width-100 g-mr-15">
										<img class="d-flex w-100"
											src="resources/WB0412697/html/assets/img-temp/150x150/img5.jpg"
											alt="Image Description">
									</div>
									<!-- End Article Image --> <!-- Article Info -->
									<div class="media-body align-self-center">
										<h4 class="h5 g-mb-7">
											<a
												class="g-color-black g-color-primary--hover g-text-underline--none--hover"
												href="#">Sneaker</a>
										</h4>
										<a
											class="d-inline-block g-color-gray-dark-v5 g-font-size-13 g-mb-10"
											href="#">Footwear</a>
										<!-- End Article Info -->

										<!-- Article Footer -->
										<footer class="d-flex justify-content-between g-font-size-16">
										<span class="g-color-black g-line-height-1">$55.00</span>
										<ul
											class="list-inline g-color-gray-light-v2 g-font-size-14 g-line-height-1">
											<li
												class="list-inline-item align-middle g-brd-right g-brd-gray-light-v3 g-pr-10 g-mr-6">
												<a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Cart"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a>
											</li>
											<li class="list-inline-item align-middle"><a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Wishlist"> <i
													class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										</footer>
										<!-- End Article Content -->
									</div>
									</article>
									<!-- End Article -->
								</div>

								<div class="col-md-6 col-lg-4 g-px-10">
									<!-- Article -->
									<article
										class="media g-brd-around g-brd-gray-light-v4 g-bg-white rounded g-pa-10 g-mb-20">
									<!-- Article Image -->
									<div class="g-max-width-100 g-mr-15">
										<img class="d-flex w-100"
											src="resources/WB0412697/html/assets/img-temp/150x150/img6.jpg"
											alt="Image Description">
									</div>
									<!-- End Article Image --> <!-- Article Info -->
									<div class="media-body align-self-center">
										<h4 class="h5 g-mb-7">
											<a
												class="g-color-black g-color-primary--hover g-text-underline--none--hover"
												href="#">Sneaker</a>
										</h4>
										<a
											class="d-inline-block g-color-gray-dark-v5 g-font-size-13 g-mb-10"
											href="#">Footwear</a>
										<!-- End Article Info -->

										<!-- Article Footer -->
										<footer class="d-flex justify-content-between g-font-size-16">
										<span class="g-color-black g-line-height-1">$55.00</span>
										<ul
											class="list-inline g-color-gray-light-v2 g-font-size-14 g-line-height-1">
											<li
												class="list-inline-item align-middle g-brd-right g-brd-gray-light-v3 g-pr-10 g-mr-6">
												<a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Cart"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a>
											</li>
											<li class="list-inline-item align-middle"><a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Wishlist"> <i
													class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										</footer>
										<!-- End Article Footer -->
									</div>
									</article>
									<!-- End Article -->
								</div>

								<div class="col-md-6 col-lg-4 g-px-10">
									<!-- Article -->
									<article
										class="media g-brd-around g-brd-gray-light-v4 g-bg-white rounded g-pa-10 g-mb-20">
									<!-- Article Image -->
									<div class="g-max-width-100 g-mr-15">
										<img class="d-flex w-100"
											src="resources/WB0412697/html/assets/img-temp/150x150/img7.jpg"
											alt="Image Description">
									</div>
									<!-- End Article Image --> <!-- Article Info -->
									<div class="media-body align-self-center">
										<h4 class="h5 g-mb-7">
											<a
												class="g-color-black g-color-primary--hover g-text-underline--none--hover"
												href="#">Desk Clock</a>
										</h4>
										<a
											class="d-inline-block g-color-gray-dark-v5 g-font-size-13 g-mb-10"
											href="#">Hi-Tech</a>
										<!-- End Article Info -->

										<!-- Article Footer -->
										<footer class="d-flex justify-content-between g-font-size-16">
										<span class="g-color-black g-line-height-1">$55.00</span>
										<ul
											class="list-inline g-color-gray-light-v2 g-font-size-14 g-line-height-1">
											<li
												class="list-inline-item align-middle g-brd-right g-brd-gray-light-v3 g-pr-10 g-mr-6">
												<a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Cart"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a>
											</li>
											<li class="list-inline-item align-middle"><a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Wishlist"> <i
													class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										</footer>
										<!-- End Article Footer -->
									</div>
									</article>
									<!-- End Article -->
								</div>

								<div class="col-md-6 col-lg-4 g-px-10">
									<!-- Article -->
									<article
										class="media g-brd-around g-brd-gray-light-v4 g-bg-white rounded g-pa-10 g-mb-20">
									<!-- Article Image -->
									<div class="g-max-width-100 g-mr-15">
										<img class="d-flex w-100"
											src="resources/WB0412697/html/assets/img-temp/150x150/img8.jpg"
											alt="Image Description">
									</div>
									<!-- End Article Image --> <!-- Article Info -->
									<div class="media-body align-self-center">
										<h4 class="h5 g-mb-7">
											<a
												class="g-color-black g-color-primary--hover g-text-underline--none--hover"
												href="#">Alarm Clock</a>
										</h4>
										<a
											class="d-inline-block g-color-gray-dark-v5 g-font-size-13 g-mb-10"
											href="#">Hi-Tech</a>
										<!-- End Article Info -->

										<!-- Article Footer -->
										<footer class="d-flex justify-content-between g-font-size-16">
										<span class="g-color-black g-line-height-1">$55.00</span>
										<ul
											class="list-inline g-color-gray-light-v2 g-font-size-14 g-line-height-1">
											<li
												class="list-inline-item align-middle g-brd-right g-brd-gray-light-v3 g-pr-10 g-mr-6">
												<a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Cart"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a>
											</li>
											<li class="list-inline-item align-middle"><a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Wishlist"> <i
													class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										</footer>
										<!-- End Article Footer -->
									</div>
									</article>
									<!-- End Article -->
								</div>

								<div class="col-md-6 col-lg-4 g-px-10">
									<!-- Article -->
									<article
										class="media g-brd-around g-brd-gray-light-v4 g-bg-white rounded g-pa-10 g-mb-20">
									<!-- Article Image -->
									<div class="g-max-width-100 g-mr-15">
										<img class="d-flex w-100"
											src="resources/WB0412697/html/assets/img-temp/150x150/img9.jpg"
											alt="Image Description">
									</div>
									<!-- End Article Image --> <!-- Article Info -->
									<div class="media-body align-self-center">
										<h4 class="h5 g-mb-7">
											<a
												class="g-color-black g-color-primary--hover g-text-underline--none--hover"
												href="#">Desk Clock</a>
										</h4>
										<a
											class="d-inline-block g-color-gray-dark-v5 g-font-size-13 g-mb-10"
											href="#">Hi-Tech</a>
										<!-- End Article Info -->

										<!-- Article Footer -->
										<footer class="d-flex justify-content-between g-font-size-16">
										<span class="g-color-black g-line-height-1">$55.00</span>
										<ul
											class="list-inline g-color-gray-light-v2 g-font-size-14 g-line-height-1">
											<li
												class="list-inline-item align-middle g-brd-right g-brd-gray-light-v3 g-pr-10 g-mr-6">
												<a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Cart"> <i
													class="icon-finance-100 u-line-icon-pro"></i>
											</a>
											</li>
											<li class="list-inline-item align-middle"><a
												class="g-color-gray-dark-v5 g-color-primary--hover g-text-underline--none--hover"
												href="#" data-toggle="tooltip" data-placement="top"
												data-original-title="Add to Wishlist"> <i
													class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
										</ul>
										</footer>
										<!-- End Article Footer -->
									</div>
									</article>
									<!-- End Article -->
								</div>
							</div>
						</div> <!-- End Mega Menu --></li>
					<!-- End Mega Menu Item -->
				</ul>
			</div>
			<!-- End Navigation -->
		</div>
		</nav>
	</div>
	</header>
	<!-- End Header -->

	<!-- Promo Block -->
	<section
		class="dzsparallaxer auto-init height-is-based-on-content use-loading mode-scroll loaded dzsprx-readyall"
		data-options='{direction: "fromtop", animation_duration: 25, direction: "reverse"}'>
	<div class="divimage dzsparallaxer--target w-100 g-bg-pos-top-center"
		style="height: 140%; background-image: url(assets/img-temp/1920x1080/img3.jpg);"></div>

	<div class="container g-color-white g-pt-100 g-pb-40">
		<div class="g-mb-50">
			<span
				class="d-block g-color-white-opacity-0_8 g-font-weight-300 g-font-size-20">Best
				hand-made</span>
			<h3
				class="g-color-white g-font-size-50 g-font-size-90--md g-line-height-1_2 mb-0">Innovative.</h3>
			<p
				class="g-color-white g-font-weight-600 g-font-size-20 text-uppercase">Trends
				2018</p>
		</div>

<!-- 		<div class="d-flex justify-content-end"> -->
<!-- 			<ul -->
<!-- 				class="u-list-inline g-bg-gray-dark-v1 g-font-weight-300 g-rounded-50 g-py-5 g-px-20"> -->
<!-- 				<li class="list-inline-item g-mr-5"><a -->
<!-- 					class="u-link-v5 g-color-white g-color-primary--hover" href="#">Home</a> -->
<!-- 					<i class="g-color-white-opacity-0_5 g-ml-5">/</i></li> -->
<!-- 				<li class="list-inline-item g-mr-5"><a -->
<!-- 					class="u-link-v5 g-color-white g-color-primary--hover" href="#">Pages</a> -->
<!-- 					<i class="g-color-white-opacity-0_5 g-ml-5">/</i></li> -->
<!-- 				<li class="list-inline-item g-color-primary g-font-weight-400"> -->
<!-- 					<span>Signup</span> -->
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 		</div> -->
	</div>
	</section>
	<!-- End Promo Block -->
</body>
</html>