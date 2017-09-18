<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Title -->
<title>E-commerce Grid Filter Page | Unify - Responsive Website
	Template</title>

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
	href="${contextPath}/resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-line/css/simple-line-icons.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-line-pro/style.css">
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-hs/style.css">
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.css">
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.css">
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.css">
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/animate.css">
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/hamburgers/hamburgers.min.css">
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.css">
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">

<!-- CSS Unify Theme -->
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/e-commerce/assets/css/styles.e-commerce.css">

<!-- CSS Customization -->
<link rel="stylesheet"
	href="${contextPath}/resources/WB0412697/html/assets/css/custom.css">
</head>
<body>
	<jsp:include page="header.jsp" flush="false" />


	<main> <!--  Products -->
	<div class="container">
		<div class="row">
			<!-- Content -->
			<div class="col-md-9 flex-md-unordered">
				<div class="g-pl-15--lg">
					<!-- Filters -->
					<div
						class="d-flex justify-content-end align-items-center g-brd-bottom g-brd-gray-light-v4 g-pt-40 g-pb-20">
						<!-- Show -->
						<div class="g-mr-60">
							<h2
								class="h6 align-middle d-inline-block g-font-weight-400 text-uppercase g-pos-rel g-top-1 mb-0">Show:</h2>

							<!-- Secondary Button -->
							<div class="d-inline-block btn-group">
								<button type="button"
									class="btn btn-secondary dropdown-toggle h6 align-middle g-brd-none g-color-gray-dark-v5 g-color-black--hover g-bg-transparent text-uppercase g-font-weight-300 g-font-size-12 g-pa-0 g-pl-10 g-ma-0"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">9</button>
								<div class="dropdown-menu rounded-0">
									<a class="dropdown-item g-color-gray-dark-v4 g-font-weight-300"
										href="#">All</a> <a
										class="dropdown-item g-color-gray-dark-v4 g-font-weight-300"
										href="#">5</a> <a
										class="dropdown-item g-color-gray-dark-v4 g-font-weight-300"
										href="#">15</a> <a
										class="dropdown-item g-color-gray-dark-v4 g-font-weight-300"
										href="#">20</a> <a
										class="dropdown-item g-color-gray-dark-v4 g-font-weight-300"
										href="#">25</a>
								</div>
							</div>
							<!-- End Secondary Button -->
	</div>
	<!-- End Show -->

	<!-- Sort By -->
	<div class="g-mr-60">
		<h2
			class="h6 align-middle d-inline-block g-font-weight-400 text-uppercase g-pos-rel g-top-1 mb-0">Sort
			by:</h2>

		<!-- Secondary Button -->
		<div class="d-inline-block btn-group">
			<button type="button"
				class="btn btn-secondary dropdown-toggle h6 align-middle g-brd-none g-color-gray-dark-v5 g-color-black--hover g-bg-transparent text-uppercase g-font-weight-300 g-font-size-12 g-pa-0 g-pl-10 g-ma-0"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Bestseller</button>
			<div class="dropdown-menu rounded-0">
				<a class="dropdown-item g-color-gray-dark-v4 g-font-weight-300"
					href="#">Bestseller</a> <a
					class="dropdown-item g-color-gray-dark-v4 g-font-weight-300"
					href="#">Trending</a> <a
					class="dropdown-item g-color-gray-dark-v4 g-font-weight-300"
					href="#">Price low to high</a> <a
					class="dropdown-item g-color-gray-dark-v4 g-font-weight-300"
					href="#">price high to low</a>
			</div>
		</div>
		<!-- End Secondary Button -->
	</div>
	<!-- End Sort By -->

	<!-- Sort By -->
	<ul class="list-inline mb-0">
		<li class="list-inline-item"><a
			class="u-icon-v2 u-icon-size--xs g-brd-gray-light-v3 g-brd-black--hover g-color-gray-dark-v5 g-color-black--hover"
			href="page-list-filter1.html"> <i class="icon-list"></i>
		</a></li>
		<li class="list-inline-item"><a
			class="u-icon-v2 u-icon-size--xs g-brd-primary g-color-primary"
			href="page-grid-filter1.html"> <i class="icon-grid"></i>
		</a></li>
	</ul>
	<!-- End Sort By -->
	</div>
	<!-- End Filters -->

	<!-- Products -->

	<div class="row g-pt-30 g-mb-50">

		<c:forEach var="list" items="${onepiecelist}">
			<div class="col-6 col-lg-4 g-mb-30">
				<!-- Product -->
				<figure>
									<div class="g-pos-rel g-mb-20">
										<a href="onepiece-detail?product_no=${list.product_no}"><img class="img-fluid"
											src="${contextPath}/resources/OPS/${list.product_no}_1.jpg"
											alt="Image Description"></a>
<!-- 											<img class="img-fluid" -->
<!-- 											src="${contextPath}/resources/WB0412697/html/assets/img-temp/480x700/img1.jpg" -->
<!-- 											alt="Image Description"> -->

										<!-- Ribbon -->
<!-- 										<figcaption> -->
<!-- 											<span -->
<!-- 												class="u-ribbon-v1 g-width-40 g-height-40 g-color-white g-bg-primary g-font-size-11 text-center text-uppercase g-rounded-50x g-top-10 g-left-10 g-px-2 g-py-12">New</span> -->
<!-- 										</figcaption> -->
										<!-- End Ribbon -->
									</div>

				<div class="media">
					<!-- Product Info -->
					<div class="d-flex flex-column">
						<h4 class="h6 g-color-black mb-1">
							<a class="u-link-v5 g-color-black g-color-primary--hover"
								href="onepiece-detail?product_no=${list.product_no}"> ${list.pro_name} </a>
						</h4>
						<span class="d-block g-color-black g-font-size-17">${list.pro_price}</span>
					</div>
					<!-- End Product Info -->

					<!-- Products Icons -->
					<ul class="list-inline media-body text-right">
						<li class="list-inline-item align-middle mx-0"><a
							class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle"
							href="#" data-toggle="tooltip" data-placement="top"
							title="Add to Cart"> <i
								class="icon-finance-100 u-line-icon-pro"></i>
						</a></li>
<!-- 						<li class="list-inline-item align-middle mx-0"><a -->
<!-- 							class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5 g-color-primary--hover g-font-size-15 rounded-circle" -->
<!-- 							href="#" data-toggle="tooltip" data-placement="top" -->
<!-- 							title="Add to Wishlist"> <i -->
<!-- 								class="icon-medical-022 u-line-icon-pro"></i> -->
<!-- 						</a></li> -->
					</ul>
					<!-- End Products Icons -->
				</div>
				</figure>
				<!-- End Product -->
			</div>
		</c:forEach>

	</div>


	<!-- End Products -->

	<hr class="g-mb-60">

	<!-- Pagination -->
	<nav class="g-mb-60" aria-label="Page Navigation">
	<ul class="list-inline">
		<li class="list-inline-item hidden-down"><a
			class="active u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--active g-color-white g-bg-primary--active g-font-size-12 rounded-circle g-pa-5"
			href="#">1</a></li>
		<li class="list-inline-item hidden-down"><a
			class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
			href="#">2</a></li>
		<li class="list-inline-item hidden-xs-down"><a
			class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
			href="#">3</a></li>
		<li class="list-inline-item hidden-down"><span
			class="g-width-30 g-height-30 g-color-gray-dark-v5 g-font-size-12 rounded-circle g-pa-5">...</span>
		</li>
		<li class="list-inline-item hidden-xs-down"><a
			class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
			href="#">15</a></li>
		<li class="list-inline-item"><a
			class="u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--hover g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5 g-ml-15"
			href="#" aria-label="Next"> <span aria-hidden="true"> <i
					class="fa fa-angle-right"></i>
			</span> <span class="sr-only">Next</span>
		</a></li>
		<li class="list-inline-item float-right"><span
			class="u-pagination-v1__item-info g-color-gray-dark-v4 g-font-size-12 g-pa-5">Page
				1 of 15</span></li>
	</ul>
	</nav>
	<!-- End Pagination -->
	</div>
	</div>
	<!-- End Content -->


	<!-- Filters -->
	<div
		class="col-md-3 flex-md-first g-brd-right--lg g-brd-gray-light-v4 g-pt-40">
		<div class="g-pr-15--lg g-pt-60">
			<!-- Categories -->
			<div class="g-mb-30">
				<h3 class="h5 mb-3">Categories</h3>

				<ul class="list-unstyled">
					<li class="my-3"><a
						class="d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover"
						href="#">Clothes <span class="float-right g-font-size-12">202</span></a>
					</li>
					<li class="my-3"><a
						class="d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover"
						href="#">T-shirts <span class="float-right g-font-size-12">44</span></a>
					</li>
					<li class="my-3"><a
						class="d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover"
						href="#">Shirts <span class="float-right g-font-size-12">398</span></a>
					</li>
					<li class="my-3"><a
						class="d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover"
						href="#">Shorts <span class="float-right g-font-size-12">56</span></a>
					</li>
					<li class="my-3"><a
						class="d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover"
						href="#">Jackets <span class="float-right g-font-size-12">71</span></a>
					</li>
					<li class="my-3"><a
						class="d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover"
						href="#">Shoes <span class="float-right g-font-size-12">943</span></a>
					</li>
					<li class="my-3"><a
						class="d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover"
						href="#">Glasses <span class="float-right g-font-size-12">109</span></a>
					</li>
					<li class="my-3"><a
						class="d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover"
						href="#">Classic <span class="float-right g-font-size-12">88</span></a>
					</li>
					<li class="my-3"><a
						class="d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover"
						href="#">Trending <span class="float-right g-font-size-12">111</span></a>
					</li>
					<li class="my-3"><a
						class="d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover"
						href="#">Accessories <span class="float-right g-font-size-12">5</span></a>
					</li>
				</ul>
			</div>
			<!-- End Categories -->

			<hr>

			<!-- Pricing -->
			<div class="g-mb-30">
				<h3 class="h5 mb-3">Pricing</h3>

				<div class="text-center">
					<span class="d-block g-color-primary mb-4">$(<span
						id="rangeSliderAmount3">0</span>)
					</span>
					<div id="rangeSlider1" class="u-slider-v1-3"
						data-result-container="rangeSliderAmount3" data-range="true"
						data-default="180, 320" data-min="0" data-max="500"></div>
				</div>
			</div>
			<!-- End Pricing -->

			<hr>

			<!-- Brand -->
			<div class="g-mb-30">
				<h3 class="h5 mb-3">Brand</h3>

				<ul class="list-unstyled">
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox">
							<div
								class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> Mango <span class="float-right g-font-size-13">24</span>
					</label></li>
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox" checked>
							<div
								class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> Gucci <span class="float-right g-font-size-13">334</span>
					</label></li>
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox">
							<div class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> Adidas <span class="float-right g-font-size-13">18</span>
					</label></li>
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox" checked>
							<div
								class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> Nike <span class="float-right g-font-size-13">6</span>
					</label></li>
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox">
							<div
								class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> Puma <span class="float-right g-font-size-13">71</span>
					</label></li>
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox">
							<div
								class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> Zara <span class="float-right g-font-size-13">9</span>
					</label></li>
				</ul>
			</div>
			<!-- End Brand -->

			<hr>

			<!-- Size -->
			<div class="g-mb-30">
				<h3 class="h5 mb-3">Size</h3>

				<ul class="list-unstyled">
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox">
							<div
								class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> S <span class="float-right g-font-size-13">24</span>
					</label></li>
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox" checked>
							<div
								class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> M <span class="float-right g-font-size-13">334</span>
					</label></li>
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox">
							<div
								class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> L <span class="float-right g-font-size-13">18</span>
					</label></li>
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox">
							<div
								class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> XL <span class="float-right g-font-size-13">6</span>
					</label></li>
					<li class="my-2"><label
						class="form-check-inline u-check d-block u-link-v5 g-color-gray-dark-v4 g-color-primary--hover g-pl-30">
							<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							type="checkbox">
							<div
								class="u-check-icon-checkbox-v4 g-absolute-centered--y g-left-0">
								<i class="fa" data-check-icon="&#xf00c"></i>
							</div> XXL <span class="float-right g-font-size-13">71</span>
					</label></li>
				</ul>
			</div>
			<!-- End Size -->

			<hr>

			<!-- Color -->
			<div class="g-mb-30">
				<h3 class="h5 mb-3">Color</h3>

				<!-- Checkbox -->
				<ul class="list-inline mb-0">
					<li class="list-inline-item g-mr-10"><label
						class="form-check-inline u-check"> <input
							class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							name="radInline1_1" type="radio">
							<div
								class="u-check-icon-checkbox-v4 g-brd-transparent g-brd-gray-dark-v4--checked rounded-circle g-absolute-centered--y g-left-0 g-mt-3">
								<i
									class="d-block g-absolute-centered g-width-16 g-height-16 g-bg-primary rounded-circle"></i>
							</div>
					</label></li>
					<li class="list-inline-item g-mx-10"><label
						class="form-check-inline u-check"> <input
							class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							name="radInline1_1" type="radio">
							<div
								class="u-check-icon-checkbox-v4 g-brd-transparent g-brd-gray-dark-v4--checked rounded-circle g-absolute-centered--y g-left-0 g-mt-3">
								<i
									class="d-block g-absolute-centered g-width-16 g-height-16 g-bg-beige rounded-circle"></i>
							</div>
					</label></li>
					<li class="list-inline-item g-mx-10"><label
						class="form-check-inline u-check"> <input
							class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							name="radInline1_1" type="radio">
							<div
								class="u-check-icon-checkbox-v4 g-brd-transparent g-brd-gray-dark-v4--checked rounded-circle g-absolute-centered--y g-left-0 g-mt-3">
								<i
									class="d-block g-absolute-centered g-width-16 g-height-16 g-bg-black rounded-circle"></i>
							</div>
					</label></li>
					<li class="list-inline-item g-mx-10"><label
						class="form-check-inline u-check"> <input
							class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							name="radInline1_1" type="radio">
							<div
								class="u-check-icon-checkbox-v4 g-brd-transparent g-brd-gray-dark-v4--checked rounded-circle g-absolute-centered--y g-left-0 g-mt-3">
								<i
									class="d-block g-absolute-centered g-width-16 g-height-16 g-bg-yellow rounded-circle"></i>
							</div>
					</label></li>
					<li class="list-inline-item g-mx-10"><label
						class="form-check-inline u-check"> <input
							class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							name="radInline1_1" type="radio">
							<div
								class="u-check-icon-checkbox-v4 g-brd-transparent g-brd-gray-dark-v4--checked rounded-circle g-absolute-centered--y g-left-0 g-mt-3">
								<i
									class="d-block g-absolute-centered g-width-16 g-height-16 g-bg-blue rounded-circle"></i>
							</div>
					</label></li>
					<li class="list-inline-item g-mx-10"><label
						class="form-check-inline u-check"> <input
							class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							name="radInline1_1" type="radio">
							<div
								class="u-check-icon-checkbox-v4 g-brd-transparent g-brd-gray-dark-v4--checked rounded-circle g-absolute-centered--y g-left-0 g-mt-3">
								<i
									class="d-block g-absolute-centered g-width-16 g-height-16 g-bg-purple rounded-circle"></i>
							</div>
					</label></li>
					<li class="list-inline-item g-mx-10"><label
						class="form-check-inline u-check"> <input
							class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							name="radInline1_1" type="radio">
							<div
								class="u-check-icon-checkbox-v4 g-brd-transparent g-brd-gray-dark-v4--checked rounded-circle g-absolute-centered--y g-left-0 g-mt-3">
								<i
									class="d-block g-absolute-centered g-width-16 g-height-16 g-bg-brown rounded-circle"></i>
							</div>
					</label></li>
					<li class="list-inline-item g-ml-10"><label
						class="form-check-inline u-check"> <input
							class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
							name="radInline1_1" type="radio">
							<div
								class="u-check-icon-checkbox-v4 g-brd-transparent g-brd-gray-dark-v4--checked rounded-circle g-absolute-centered--y g-left-0 g-mt-3">
								<i
									class="d-block g-absolute-centered g-width-16 g-height-16 g-bg-gray-dark-v4 rounded-circle"></i>
							</div>
					</label></li>
				</ul>
				<!-- End Checkbox -->
			</div>
			<!-- End Color -->

			<hr>

			<!-- Rating -->
			<div class="g-mb-30">
				<h3 class="h5 mb-3">Rating</h3>

				<ul
					class="js-rating u-rating-v1 g-font-size-20 g-color-gray-light-v3 mb-0"
					data-hover-classes="g-color-primary">
					<li class="g-color-primary click"><i class="fa fa-star"></i></li>
					<li class="g-color-primary click"><i class="fa fa-star"></i></li>
					<li class="g-color-primary click"><i class="fa fa-star"></i></li>
					<li class="g-color-primary click"><i class="fa fa-star"></i></li>
					<li><i class="fa fa-star"></i></li>
				</ul>
			</div>
			<!-- End Rating -->

			<hr>

			<button
				class="btn btn-block u-btn-black g-font-size-default text-uppercase g-py-10"
				type="button">Reset</button>
		</div>
	</div>
	<!-- End Filters -->

	<jsp:include page="footer.jsp" flush="false" />
	<a class="js-go-to u-go-to-v2" href="#" data-type="fixed"
				data-position='{
           "bottom": 15,
           "right": 15
         }'
				data-offset-top="400" data-compensation="#js-header"
				data-show-effect="zoomIn"> <i class="hs-icon hs-icon-arrow-top"></i>
			</a>
	</main>

	<!-- JS Global Compulsory -->
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
	<script src="${contextPath}/resources/WB0412697/html/assets/vendor/tether.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/widget.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/menu.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/mouse.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/slider.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

	<!-- JS Unify -->
	<script src="${contextPath}/resources/WB0412697/html/assets/js/hs.core.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.header.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/helpers/hs.hamburgers.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.dropdown.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.scrollbar.js"></script>
	<script src="${contextPath}/resources/WB0412697/html/assets/js/helpers/hs.rating.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.slider.js"></script>
	<script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.go-to.js"></script>

	<!-- JS Customization -->
	<script src="${contextPath}/resources/WB0412697/html/assets/js/custom.js"></script>

	<!-- JS Plugins Init. -->
	<script>
		$(document).on('ready', function() {
			// initialization of header
			$.HSCore.components.HSHeader.init($('#js-header'));
			$.HSCore.helpers.HSHamburgers.init('.hamburger');
			// initialization of HSMegaMenu component
			$('.js-mega-menu').HSMegaMenu({
				event : 'hover',
				pageContainer : $('.container'),
				breakpoint : 991
			});
			// initialization of HSDropdown component
			$.HSCore.components.HSDropdown.init($('[data-dropdown-target]'), {
				afterOpen : function() {
					$(this).find('input[type="search"]').focus();
				}
			});
			// initialization of HSScrollBar component
			$.HSCore.components.HSScrollBar.init($('.js-scrollbar'));
			// initialization of go to
			$.HSCore.components.HSGoTo.init('.js-go-to');
			// initialization of rating
			$.HSCore.helpers.HSRating.init();
			// initialization of range slider
			$.HSCore.components.HSSlider.init('#rangeSlider1');
		});
	</script>
</body>
</html>