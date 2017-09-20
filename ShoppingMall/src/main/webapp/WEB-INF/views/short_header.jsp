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
   href="${contextPath}/resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-line-pro/style.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/slick-carousel/slick/slick.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-hs/style.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/animate.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/hamburgers/hamburgers.min.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">

<!-- Revolution Slider -->
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/revolution-slider/revolution/fonts/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/revolution-slider/revolution/css/settings.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/revolution-slider/revolution/css/layers.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/revolution-slider/revolution/css/navigation.css">
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/vendor/revolution-slider/revolution-addons/typewriter/css/typewriter.css">

<!-- CSS Unify Theme -->
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/e-commerce/assets/css/styles.e-commerce.css">

<!-- CSS Customization -->
<link rel="stylesheet"
   href="${contextPath}/resources/WB0412697/html/assets/css/custom.css">
</head>
<body>
   <!-- Header -->
   <header id="js-header" class="u-header u-header--static"> 
   <!-- Top Bar -->
   <div
      class="u-header__section u-header__section--dark g-bg-black g-transition-0_3 g-py-10">
      <div class="container">
         <div
            class="row flex-column flex-sm-row justify-content-between align-items-center text-uppercase g-font-weight-600 g-color-white g-font-size-12 g-mx-0--lg">
            <div class="col-auto hidden-sm-down">
               <ul class="list-inline mb-0">
<!--                   <li class="list-inline-item"><a href="#" -->
<!--                      class="g-color-white g-color-primary--hover g-pa-3"><i -->
<!--                         class="fa fa-facebook"></i></a></li> -->
<!--                   <li class="list-inline-item"><a href="#" -->
<!--                      class="g-color-white g-color-primary--hover g-pa-3"><i -->
<!--                         class="fa fa-twitter"></i></a></li> -->
<!--                   <li class="list-inline-item"><a href="#" -->
<!--                      class="g-color-white g-color-primary--hover g-pa-3"><i -->
<!--                         class="fa fa-tumblr"></i></a></li> -->
<!--                   <li class="list-inline-item"><a href="#" -->
<!--                      class="g-color-white g-color-primary--hover g-pa-3"><i -->
<!--                         class="fa fa-pinterest-p"></i></a></li> -->
<!--                   <li class="list-inline-item"><a href="#" -->
<!--                      class="g-color-white g-color-primary--hover g-pa-3"><i -->
<!--                         class="fa fa-google"></i></a></li> -->
               </ul>
            </div>

            <div class="col-auto g-pb-10 g-pb-0--sm">
               <i
                  class="fa fa-phone g-font-size-18 g-valign-middle g-color-primary g-mr-10 g-mt-minus-2"></i>
               02 321   1234
            </div>

            <div class="col-auto hidden-md-down">
               <i
                  class="fa fa-clock-o g-font-size-18 g-valign-middle g-color-primary g-mr-10 g-mt-minus-2"></i>
               Mon-Fri: 9 AM - 5 PM
            </div>

            <div class="col-auto g-pos-rel g-pb-10 g-pb-0--sm">
               <ul class="list-inline g-overflow-hidden g-pt-1 g-mx-minus-4 mb-0">
<!--                   <li class="list-inline-item g-mx-4"><i -->
<!--                      class="icon-globe-alt g-font-size-18 g-valign-middle g-color-primary g-pos-rel g-top-minus-2 g-mr-10"></i> -->
<!--                      <a href="#" id="languages-dropdown-invoker-2" -->
<!--                      class="g-color-white g-color-primary--hover g-text-underline--none--hover" -->
<!--                      aria-controls="languages-dropdown-2" aria-haspopup="true" -->
<!--                      aria-expanded="false" data-dropdown-event="click" -->
<!--                      data-dropdown-target="#languages-dropdown-2" -->
<!--                      data-dropdown-type="css-animation" data-dropdown-duration="300" -->
<!--                      data-dropdown-hide-on-scroll="false" -->
<!--                      data-dropdown-animation-in="fadeIn" -->
<!--                      data-dropdown-animation-out="fadeOut"> English </a> -->
<!--                      <ul id="languages-dropdown-2" -->
<!--                         class="list-unstyled g-pos-abs g-left-0 g-bg-black g-width-160 g-pb-5 g-mt-10 g-z-index-2" -->
<!--                         aria-labelledby="languages-dropdown-invoker-2"> -->
<!--                         <li><a -->
<!--                            class="d-block g-color-white g-color-primary--hover g-text-underline--none--hover g-py-5 g-px-20" -->
<!--                            href="#">English</a></li> -->
<!--                         <li><a -->
<!--                            class="d-block g-color-white g-color-primary--hover g-text-underline--none--hover g-py-5 g-px-20" -->
<!--                            href="#">Spanish</a></li> -->
<!--                         <li><a -->
<!--                            class="d-block g-color-white g-color-primary--hover g-text-underline--none--hover g-py-5 g-px-20" -->
<!--                            href="#">Russian</a></li> -->
<!--                         <li><a -->
<!--                            class="d-block g-color-white g-color-primary--hover g-text-underline--none--hover g-py-5 g-px-20" -->
<!--                            href="#">German</a></li> -->
<!--                      </ul></li> -->
<!--                   <li class="list-inline-item g-mx-4">|</li> -->
                           <li class="list-inline-item g-mx-4">
                        <c:if test="${not empty sessionScope.m_id}">
                              <h6>${sessionScope.m_id}님&nbsp;&nbsp;</h6>
                           </c:if></li>
                  <c:if test="${empty sessionScope.m_id}">
                     <li class="list-inline-item g-mx-4"><a
                        class="g-color-white g-color-primary--hover g-text-underline--none--hover"
                        href="${contextPath}/page-login">Login</a></li>
                  </c:if>
                  <c:if test="${not empty sessionScope.m_id}">
                     <li class="list-inline-item g-mx-4"><a
                        class="g-color-white g-color-primary--hover g-text-underline--none--hover"
                        href="logout.do">Logout</a></li>
                  </c:if>
                  <c:if test="${empty sessionScope.m_id }">
                     <li class="list-inline-item g-mx-4">|</li>
                     <li class="list-inline-item g-mx-4"><a
                        class="g-color-white g-color-primary--hover g-text-underline--none--hover"
                        href="sign_Up">JOIN</a></li>
                     </c:if>
                     <c:if test="${not empty sessionScope.m_id }">
                     <li class="list-inline-item g-mx-4">|</li>
                     <li class="list-inline-item g-mx-4"><a
                        class="g-color-white g-color-primary--hover g-text-underline--none--hover"
                        href="">MY PAGE</a></li>
                     </c:if>
                     <li class="list-inline-item g-mx-4">|</li>
                     <li class="list-inline-item g-mx-4"><a
                        class="g-color-white g-color-primary--hover g-text-underline--none--hover"
                        href="*">CART</a></li>
                  <li class="list-inline-item g-mx-4">|</li>
                  <li class="list-inline-item g-mx-4"><a
                     class="g-color-white g-color-primary--hover g-text-underline--none--hover"
                     href="#">FAQ</a></li>
               </ul>
            </div>

            <div class="col-auto">
               ${sessionScope.m_id}

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
         <a href="${contextPath}/shoppingindex" class="navbar-brand"> <img
            src="${contextPath}/resources/WB0412697/html/assets/img/logo/로고1.PNG"
            alt="Image Description">
         </a>
         <!-- End Logo -->
         <div
						class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg"
						id="navBar">
						<ul class="navbar-nav text-uppercase g-font-weight-600 ml-auto">
							<li class="nav-item g-mx-10--lg g-mx-15--xl"><a
								href="${contextPath}/shoppingindex" class="nav-link g-px-0">Home</a></li>

							<li class="nav-item hs-has-sub-menu g-mx-10--lg g-mx-15--xl">
								<a id="nav-link--pages" class="nav-link g-px-0" href="#"
								aria-haspopup="true" aria-expanded="false"
								aria-controls="nav-submenu--pages">Pages</a> <!-- Submenu -->
								<ul
									class="hs-sub-menu list-unstyled g-brd-top g-brd-primary g-brd-top-2 g-min-width-220 g-py-7 g-mt-22 g-mt-12--lg--scrolling"
									id="nav-submenu--pages" aria-labelledby="nav-link--pages">
									<li class="dropdown-item"><a class="nav-link"
										href="${contextPath}/Q_A.do">Q & A</a></li>
									<li class="dropdown-item"><a class="nav-link"
										href="${contextPath}/review">Review</a></li>
									<li class="dropdown-item"><a class="nav-link"
										href="${contextPath}/page-login">Login</a></li>
									<li class="dropdown-item"><a class="nav-link"
										href="${contextPath}/sign_Up">Signup</a></li>
								</ul> <!-- End Submenu -->
							</li>


							<!-- Mega Menu Item -->
							<li class="hs-has-mega-menu nav-item g-mx-10--lg g-mx-15--xl"
								data-animation-in="fadeIn" data-animation-out="fadeOut"
								data-position="right"><a id="mega-menu-label-2"
								class="nav-link g-px-0" href="#" aria-haspopup="true"
								aria-expanded="false">Collections <i
									class="hs-icon hs-icon-arrow-bottom g-font-size-11 g-ml-7"></i></a>

								<!-- Mega Menu -->
								<div
									class="w-100 hs-mega-menu u-shadow-v11 g-text-transform-none g-font-weight-400 g-brd-top g-brd-primary g-brd-top-2 g-bg-white g-pa-30 g-mt-17 g-mt-7--lg--scrolling"
									aria-labelledby="mega-menu-label-2">
									<div class="row align-items-stretch">
										<div class="col-md-4 g-mb-30 g-mb-0--md">
											<article class="u-block-hover">
												<img class="w-100 u-block-hover__main--zoom-v1 g-mb-minus-8"
													src="${contextPath}/resources/WB0412697/html/assets/img/logo/팬츠.PNG"
													alt="Image Description">
												<div class="g-pos-abs g-bottom-30 g-left-30">
													<span class="d-block g-color-black">Collections</span>
													<h2 class="h1 mb-0 g-color-black">Bending pants</h2>
												</div>
												<a class="u-link-v2" href="#"></a>
											</article>
										</div>

										<div class="col-md-4 g-mb-30 g-mb-0--md">
											<article class="u-block-hover">
												<img class="w-100 u-block-hover__main--zoom-v1 g-mb-minus-8"
													src="${contextPath}/resources/WB0412697/html/assets/img/logo/가디건.PNG"
													alt="Image Description">
												<div class="g-pos-abs g-bottom-30 g-left-30">
													<span class="d-block g-color-black">Collections</span>
													<h2 class="h1 mb-0 g-color-black">Cardigan</h2>
												</div>
												<a class="u-link-v2" href="#"></a>
											</article>
										</div>

										<div class="col-md-4 g-mb-30 g-mb-0--md">
											<article class="u-block-hover">
												<img class="w-100 u-block-hover__main--zoom-v1 g-mb-minus-8"
													src="${contextPath}/resources/WB0412697/html/assets/img/logo/셔츠.PNG"
													alt="Image Description">
												<div class="g-pos-abs g-bottom-30 g-left-30">
													<span class="d-block g-color-black">Collections</span>
													<h2 class="h1 mb-0 g-color-black">Basic shirts</h2>
												</div>
												<a class="u-link-v2" href="#"></a>
											</article>
										</div>
									</div>
								</div> <!-- End Mega Menu --></li>
							<!-- End Mega Menu Item -->
							

							<!-- Mega Menu Item -->
							<li class="hs-has-mega-menu nav-item g-mx-10--lg g-mx-15--xl"
								data-animation-in="fadeIn" data-animation-out="fadeOut"
								data-position="right"><a id="mega-menu-label-5"
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
												
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/top-list/tshirt">T-shirt &amp; Jackets</a></li>
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/top-list/mtmh">맨투맨/후드</a></li>
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/top-list/knit">니트</a></li>
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/top-list/blouse">블라우스</a> </li>
											</ul>

											<h4 class="h5 text-uppercase g-font-weight-600">
												<a href="${contextPath}/bottom-list/all" style="text-decoration: none"><span
													style="color: #000000;">Bottom</span>
											</h4>
											<ul class="list-unstyled">
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/bottom-list/spants">short pants</a></li>
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/bottom-list/lpants">long pants</a></li>
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/bottom-list/training">training</a></li>
											</ul>
										</div>

										<div class="col-sm-6 col-md-3 g-mb-30 g-mb-0--sm">
											<h4 class="h5 text-uppercase g-font-weight-600">
												<a href="${contextPath}/outer-list" style="text-decoration: none"><span
													style="color: #000000;">Outer</span></a>
											</h4>
											<h4 class="h5 text-uppercase g-font-weight-600">
												<a href="${contextPath}/onepiece-list" style="text-decoration: none"><span
													style="color: #000000;">OPS</span></a>
											</h4>
											<h4 class="h5 text-uppercase g-font-weight-600">
												<a href="${contextPath}/shoes-list" style="text-decoration: none"><span
													style="color: #000000;">Shoes</span></a>
											</h4>
										</div>

										<div class="col-sm-6 col-md-3 g-mb-30 g-mb-0--sm">
											<h4 class="h5 text-uppercase g-font-weight-600">
												<a href="${contextPath}/acc-list/all" style="text-decoration: none"><span
													style="color: #000000;">ACC</span>
											</h4>
											<ul class="list-unstyled g-mb-25">
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/acc-list/earings">귀걸이</a></li>
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/acc-list/necklaces">목걸이</a></li>
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/acc-list/bracelets">팔찌 </a></li>
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/acc-list/socks">양말 </a></li>
												<li class="g-mb-5"><a class="g-color-main"
													href="${contextPath}/acc-list/belts">벨트</a></li>
											</ul>
										</div>
									</div>
								</div> <!-- End Mega Menu --></li>
							<!-- End Mega Menu Item -->

						
						</ul>
					</div>

         
      </div>
      </nav>
   </div>
 
   
   </header>
   <!-- End Header -->
   <script>
		$(document).on('ready', function() {
			$.HSCore.helpers.HSModalMarkup.init('.js-modal-markup');

			$.HSCore.components.HSMarkupCopy.init('.js-copy');
		});
	</script>

	<!-- JS Custom -->
	<script src="${contextPath}/resources/WB0412697/html/assets/js/custom.js"></script>

	<!-- JS Plugins Init. -->
	<script>
		$(document).on('ready', function() {
			// initialization of rating
			$.HSCore.components.HSRating.init($('.js-rating'), {
				spacing : 2
			});

			// initialization of peity charts
			$.HSCore.components.HSChart.peity.init($('.js-peity-chart'));
		});

		$(window).on(
				'load',
				function() {
					// initialization of header
					$.HSCore.components.HSHeader.init($('#js-header'));
					$.HSCore.helpers.HSHamburgers.init('.hamburger');

					// initialization of autocomplet
					$.HSCore.components.HSLocalSearchAutocomplete
							.init('#autocomplete1');

					// initialization of go to
					$.HSCore.components.HSGoTo.init('.js-go-to');

					// initialization of HSMegaMenu component
					$('.js-mega-menu').HSMegaMenu({
						event : 'hover',
						pageContainer : $('.container'),
						breakpoint : 991
					});
				});
	</script>
</body>
</html>