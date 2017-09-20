<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Title -->
<title>E-commerce Product Page | Unify - Responsive Website
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
	
<script>
	 function goto_url(act) {
	  document.acc_detail.action = act;
	  document.acc_detail.submit();
	}
</script>
	
</head>

<body>
	<jsp:include page="header.jsp" flush="false" />

	<!-- Product Description -->
	 <form name="acc_detail" method="post" accept-charset="utf-8" onsubmit="document.charset='utf-8';">
      <input type="hidden" name="product_no" id="product_no" value="${accdetail.dto.product_no}"> 
      <input type="hidden" name="pro_name" value="${accdetail.dto.pro_name}">
      <input type="hidden" name="pro_price" value="${accdetail.dto.pro_price}">
	<div class="container">
		<div class="row">
			<div class="col-lg-7">
				<!-- Carousel -->
				<div id="carouselCus1" class="js-carousel g-pt-10 g-mb-10"
					data-infinite="true" data-fade="true"
					data-arrows-classes="u-arrow-v1 g-brd-around g-brd-white g-absolute-centered--y g-width-45 g-height-45 g-font-size-14 g-color-white g-color-primary--hover rounded-circle"
					data-arrow-left-classes="fa fa-angle-left g-left-40"
					data-arrow-right-classes="fa fa-angle-right g-right-40">
					<div class="js-slide g-bg-cover g-bg-black-opacity-0_1--after">
						<img class="img-fluid2 w-100"
							src="${contextPath}/resources/product/${accdetail.dto.product_no}_1.jpg"
							alt="Image Description">
					</div>
				</div>

				<!-- End Carousel -->
			</div>

			<div class="col-lg-5">
				<div class="g-px-40--lg g-py-70">
					<!-- Product Info -->
					<div class="g-mb-30">
						<h1 class="g-font-weight-300 mb-4">${accdetail.dto.pro_name}</h1>
						<p>Dress is the "rain mac" version of our beloved essential
							the Unify Parka. Crafted from a water resistant fluid memory
							fabric to create an elegant draped effect when thrown on, this
							lightweight shell will take you from season to season and protect
							you from that unexpected shower.</p>
					</div>
					<!-- End Product Info -->

					<!-- Price -->
					<div class="g-mb-30">
						<h2
							class="g-color-gray-dark-v5 g-font-weight-400 g-font-size-12 text-uppercase mb-2">Price</h2>
						<span class="g-color-black g-font-weight-500 g-font-size-30 mr-2">${accdetail.dto.pro_price}</span>
					</div>
					<!-- End Price -->

					<!-- Accordion -->
					<div id="accordion-01" role="tablist" aria-multiselectable="true">
						<div id="accordion-01-heading-01"
							class="g-brd-y g-brd-gray-light-v3 py-3" role="tab">
							<h5 class="g-font-weight-400 g-font-size-default mb-0">
								<a
									class="d-block g-color-gray-dark-v5 g-text-underline--none--hover"
									href="#accordion-01-body-01" data-toggle="collapse"
									data-parent="#accordion-01" aria-expanded="false"
									aria-controls="accordion-01-body-01">Details <span
									class="float-right g-pos-rel g-top-3 mr-1 fa fa-angle-down"></span></a>
							</h5>
						</div>
						<div id="accordion-01-body-01" class="collapse" role="tabpanel"
							aria-labelledby="accordion-01-heading-01">
							<div class="g-py-10">
								<p class="g-font-size-12 mb-2">SHELL: 100% POLYESTER</p>
								<p class="g-font-size-12 mb-2">Always check the care label
									instructions.</p>
								<p class="g-font-size-12 mb-2">Professional dry clean only.
									Remove all detachable parts before cleaning. Do not iron.</p>
								<p class="g-font-size-12 mb-2">(Navy: Avoid contact with
									light coloured fabrics and upholstery especially whilst damp.)</p>
							</div>
						</div>
					</div>
					<!-- End Accordion -->

					<!-- Colour -->
					<div
						class="d-flex justify-content-between align-items-center g-brd-bottom g-brd-gray-light-v3 py-3"
						role="tab">
						<h5
							class="g-color-gray-dark-v5 g-font-weight-400 g-font-size-default mb-0">Color</h5>

						<!-- Checkbox -->
						<ul class="list-inline mb-0">

							<c:choose>
              <c:when test="${not empty accdetail.color}">
              <div class="selectbox"> 
              <select name="select_color"> 
              <option selected>-----</option>
                <c:forEach var="color" items="${accdetail.color}">
              <option>${color}</option> 
                </c:forEach>
              </select> 
              </div>
              </c:when>
              <c:otherwise>
               <li class="list-inline-item g-mx-15">
                    <label class="form-check-inline u-check">
                      <input class="hidden-xs-up g-pos-abs g-top-0 g-left-0" name="radInline2_1" type="text">--
                      <div class="u-check-icon-checkbox-v4 g-brd-none g-absolute-centered--y g-left-0">
                      </div>
                    </label>
                  </li>
              </c:otherwise>
              </c:choose>

						</ul>
					</div>
					<!-- End Colour -->

					<!-- Size -->
					<div
						class="d-flex justify-content-between align-items-center g-brd-bottom g-brd-gray-light-v3 py-3"
						role="tab">
						<h5
							class="g-color-gray-dark-v5 g-font-weight-400 g-font-size-default mb-0">Size</h5>

						<!-- Checkbox -->
						<ul class="list-inline mb-0">
							<li class="list-inline-item g-mx-15"><label
								class="form-check-inline u-check"> <input
									class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
									name="radInline2_1" type="radio">
									<div
										class="u-check-icon-checkbox-v4 g-brd-none g-absolute-centered--y g-left-0">

									</div>
							</label></li>
							<li class="list-inline-item g-mx-15"><label
								class="form-check-inline u-check"> <input
									class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
									name="radInline2_1" type="radio">
									<div
										class="u-check-icon-checkbox-v4 g-brd-none g-absolute-centered--y g-left-0">
										FREE</div>
							</label></li>
							<li class="list-inline-item g-mx-15"><label
								class="form-check-inline u-check"> <input
									class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
									name="radInline2_1" type="radio">
									<div
										class="u-check-icon-checkbox-v4 g-brd-none g-absolute-centered--y g-left-0">

									</div>
							</label></li>
						</ul>
						<!-- End Checkbox -->
					</div>
					<!-- End Size -->

					<!-- Quantity -->
					<div
						class="d-flex justify-content-between align-items-center g-brd-bottom g-brd-gray-light-v3 py-3 g-mb-30"
						role="tab">
						<h5
							class="g-color-gray-dark-v5 g-font-weight-400 g-font-size-default mb-0">Quantity</h5>

						<div
							class="js-quantity input-group u-quantity-v1 g-width-80 g-brd-primary--focus">
							<input
								class="js-result form-control text-center g-font-size-13 rounded-0"
								type="text" name="quantity" value="1" readonly>

							<div
								class="input-group-addon d-flex align-items-center g-width-30 g-bg-white g-font-size-13 rounded-0 g-pa-5">
								<i
									class="js-plus g-color-gray g-color-primary--hover fa fa-angle-up"></i>
								<i
									class="js-minus g-color-gray g-color-primary--hover fa fa-angle-down"></i>
							</div>
						</div>
					</div>
					<!-- End Quantity -->

					<!-- Buttons -->
					<div class="row g-mx-minus-5 g-mb-20">
						<div class="col g-px-5 g-mb-10">
							<button
								class="btn btn-block u-btn-primary g-font-size-12 text-uppercase g-py-15 g-px-25"
								type="button" onclick="goto_url('cart_Chk')">
								Add to Cart <i
									class="align-middle ml-2 icon-finance-100 u-line-icon-pro"></i>
							</button>
						</div>
						<div class="col g-px-5 g-mb-10">
							<button
								class="btn btn-block u-btn-outline-black g-brd-gray-dark-v5 g-brd-black--hover g-color-gray-dark-v4 g-color-white--hover g-font-size-12 text-uppercase g-py-15 g-px-25"
								type="button" onclick="goto_url('direct_shipping')">
								Go Order <i
									class="align-middle ml-2 icon-medical-022 u-line-icon-pro"></i>
							</button>
						</div>
					</div>
					<!-- End Buttons -->

					<!-- Nav Tabs -->
					<ul
						class="nav d-flex justify-content-between g-font-size-12 text-uppercase"
						role="tablist" data-target="nav-1-1-default-hor-left">
						<li class="nav-item g-brd-bottom g-brd-gray-dark-v4"><a
							class="nav-link active g-color-primary--active g-pa-0 g-pb-1"
							data-toggle="tab" href="#nav-1-1-default-hor-left--3" role="tab">Returns</a>
						</li>
						<li class="nav-item g-brd-bottom g-brd-gray-dark-v4"><a
							class="nav-link g-color-primary--active g-pa-0 g-pb-1"
							data-toggle="tab" href="#nav-1-1-default-hor-left--1" role="tab">View
								Size Guide</a></li>
						<li class="nav-item g-brd-bottom g-brd-gray-dark-v4"><a
							class="nav-link g-color-primary--active g-pa-0 g-pb-1"
							data-toggle="tab" href="#nav-1-1-default-hor-left--2" role="tab">Delivery</a>
						</li>
					</ul>
					<!-- End Nav Tabs -->

					<!-- Tab Panes -->
					<div id="nav-1-1-default-hor-left" class="tab-content">
						<div class="tab-pane fade show active g-pt-30"
							id="nav-1-1-default-hor-left--3" role="tabpanel">
							<p class="g-color-gray-dark-v4 g-font-size-13 mb-0">
								You can return/exchange your orders in Unify E-commerce. For
								more information, read our <a href="#">FAQ</a>.
							</p>
						</div>

						<div class="tab-pane fade g-pt-30"
							id="nav-1-1-default-hor-left--1" role="tabpanel">
							<h4 class="g-font-size-15 mb-3">General Clothing Size Guide</h4>

							<!-- Size -->
							<table>
								<tbody>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-width-150 g-py-5">Unify Size (UK)</td>
										<td class="align-top g-width-50 g-py-5">S</td>
										<td class="align-top g-width-50 g-py-5">M</td>
										<td class="align-top g-width-50 g-py-5">L</td>
									</tr>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-width-150 g-py-5">UK</td>
										<td class="align-top g-width-50 g-py-5">6</td>
										<td class="align-top g-width-50 g-py-5">8</td>
										<td class="align-top g-width-50 g-py-5">10</td>
									</tr>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-width-150 g-py-5">Europe</td>
										<td class="align-top g-width-50 g-py-5">32</td>
										<td class="align-top g-width-50 g-py-5">34</td>
										<td class="align-top g-width-50 g-py-5">36</td>
									</tr>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-width-150 g-py-5">US</td>
										<td class="align-top g-width-50 g-py-5">2</td>
										<td class="align-top g-width-50 g-py-5">4</td>
										<td class="align-top g-width-50 g-py-5">6</td>
									</tr>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-width-150 g-py-5">Australia</td>
										<td class="align-top g-width-50 g-py-5">6</td>
										<td class="align-top g-width-50 g-py-5">8</td>
										<td class="align-top g-width-50 g-py-5">10</td>
									</tr>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-width-150 g-py-5">Japan</td>
										<td class="align-top g-width-50 g-py-5">7</td>
										<td class="align-top g-width-50 g-py-5">9</td>
										<td class="align-top g-width-50 g-py-5">11</td>
									</tr>
								</tbody>
							</table>
							<!-- End Size -->
						</div>

						<div class="tab-pane fade g-pt-30"
							id="nav-1-1-default-hor-left--2" role="tabpanel">
							<!-- Shipping Mehtod -->
							<table>
								<thead
									class="h6 g-brd-bottom g-brd-gray-light-v3 g-color-gray-dark-v3 g-font-size-13">
									<tr>
										<th class="g-width-100 g-font-weight-500 g-pa-0 g-pb-10">Destination</th>
										<th class="g-width-140 g-font-weight-500 g-pa-0 g-pb-10">Delivery
											type</th>
										<th class="g-width-150 g-font-weight-500 g-pa-0 g-pb-10">Delivery
											time</th>
										<th class="g-font-weight-500 text-right g-pa-0 g-pb-10">Cost</th>
									</tr>
								</thead>
								<tbody>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-py-10">UK</td>
										<td class="align-top g-py-10">Standard delivery</td>
										<td class="align-top g-font-size-11 g-py-10">2-3 Working
											days</td>
										<td class="align-top text-right g-py-10">$5.5</td>
									</tr>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-py-10"></td>
										<td class="align-top g-py-10">Next day</td>
										<td class="align-top g-font-size-11 g-py-10">Order before
											12pm monday - thursday and receive it the next day</td>
										<td class="align-top text-right g-py-10">$9.5</td>
									</tr>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-py-10"></td>
										<td class="align-top g-py-10">Saturday delivery</td>
										<td class="align-top g-font-size-11 g-py-10">Saturday
											delivery for orders placed before 12pm on friday</td>
										<td class="align-top text-right g-py-10">$12.00</td>
									</tr>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-py-10">Europe</td>
										<td class="align-top g-py-10">Standard delivery</td>
										<td class="align-top g-font-size-11 g-py-10">3-9 Working
											days</td>
										<td class="align-top text-right g-py-10">$20.00</td>
									</tr>
									<tr class="g-color-gray-dark-v4 g-font-size-12">
										<td class="align-top g-py-10">America</td>
										<td class="align-top g-py-10">Standard delivery</td>
										<td class="align-top g-font-size-11 g-py-10">3-9 Working
											days</td>
										<td class="align-top text-right g-py-10">$25.00</td>
									</tr>
								</tbody>
							</table>
							<!-- End Shipping Mehtod -->
						</div>
					</div>
					<!-- End Tab Panes -->
				</div>
			</div>
		</div>
	</div>
	</form>
	<!-- End Product Description -->

	<!-- Features -->
	<div class="g-brd-y g-brd-gray-light-v4">
		<div class="container g-py-30">
			<div class="row justify-content-center">
				<div class="col-md-4 mx-auto g-py-15">
					<div class="media g-px-50--lg">
						<i
							class="d-flex g-color-black g-font-size-30 g-pos-rel g-top-3 mr-4 icon-real-estate-048 u-line-icon-pro"></i>
						<div class="media-body">
							<span
								class="d-block g-font-weight-400 g-font-size-default text-uppercase">Free
								Shipping</span> <span class="d-block g-color-gray-dark-v4">In
								2-3 Days</span>
						</div>
					</div>
				</div>

				<div
					class="col-md-4 mx-auto g-brd-x--md g-brd-gray-light-v3 g-py-15">
					<div class="media g-px-50--lg">
						<i
							class="d-flex g-color-black g-font-size-30 g-pos-rel g-top-3 mr-4 icon-real-estate-040 u-line-icon-pro"></i>
						<div class="media-body">
							<span
								class="d-block g-font-weight-400 g-font-size-default text-uppercase">Free
								Returns</span> <span class="d-block g-color-gray-dark-v4">No
								Questions Asked</span>
						</div>
					</div>
				</div>

				<div class="col-md-4 mx-auto g-py-15">
					<div class="media g-px-50--lg">
						<i
							class="d-flex g-color-black g-font-size-30 g-pos-rel g-top-3 mr-4 icon-hotel-restaurant-062 u-line-icon-pro"></i>
						<div class="media-body text-left">
							<span
								class="d-block g-font-weight-400 g-font-size-default text-uppercase">Free
								24</span> <span class="d-block g-color-gray-dark-v4">Days
								Storage</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Features -->

	<!-- Details -->
	<div id="details" class="container-fluid g-px-0">
		<div class="row no-gutters g-min-height-100vh">
			<div class="col-md-6 align-self-center">
				<div class="g-width-60x mx-auto g-px-50--lg g-py-100">
					<span class="d-block g-font-size-12 text-uppercase mb-5">The
						Details</span>
					<h2 class="mb-4">High Quality Materials</h2>
					<p>Dress is the "rain mac" version of our beloved essential the
						Unify Parka. Crafted from a water resistant fluid memory fabric to
						create an elegant draped effect when thrown on, this lightweight
						shell will take you from season to season and protect you from
						that unexpected shower.</p>
				</div>
			</div>

			<div class="col-md-6 g-bg-size-cover g-min-height-300"
				data-bg-img-src="${contextPath}/resources/product/${accdetail.dto.product_no}_2.jpg"></div>
		</div>
	</div>
	<!-- End Details -->


	<a class="js-go-to u-go-to-v2" href="#" data-type="fixed"
		data-position='{
           "bottom": 15,
           "right": 15
         }'
		data-offset-top="400" data-compensation="#js-header"
		data-show-effect="zoomIn"> <i class="hs-icon hs-icon-arrow-top"></i>
	</a>
	<jsp:include page="footer.jsp" flush="false" />

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
		src="${contextPath}/resources/WB0412697/html/assets/vendor/slick-carousel/slick/slick.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery.countdown.min.js"></script>
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
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.countdown.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.carousel.js"></script>
	<script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.tabs.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.count-qty.js"></script>
	<script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.go-to.js"></script>

	<!-- JS Customization -->
	<script src="${contextPath}/resources/WB0412697/html/assets/js/custom.js"></script>

	<!-- JS Plugins Init. -->
	<script>
		$(document).on('ready', function() {
			// initialization of carousel
			$.HSCore.components.HSCarousel.init('.js-carousel');

			// initialization of header
			$.HSCore.components.HSHeader.init($('#js-header'));
			$.HSCore.helpers.HSHamburgers.init('.hamburger');

			// initialization of HSMegaMenu plugin
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

			// initialization of go to
			$.HSCore.components.HSGoTo.init('.js-go-to');

			// initialization of HSScrollBar component
			$.HSCore.components.HSScrollBar.init($('.js-scrollbar'));

			// initialization of quantity counter
			$.HSCore.components.HSCountQty.init('.js-quantity');

			// initialization of tabs
			$.HSCore.components.HSTabs.init('[role="tablist"]');
		});

		$(window).on('resize', function() {
			setTimeout(function() {
				$.HSCore.components.HSTabs.init('[role="tablist"]');
			}, 200);
		});
	</script>
</body>
</html>