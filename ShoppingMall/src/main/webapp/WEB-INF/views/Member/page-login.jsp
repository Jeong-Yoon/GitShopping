<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<!-- Title -->
<title>E-commerce Login Page | Unify - Responsive Website
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
	href="resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-line/css/simple-line-icons.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-line-pro/style.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-hs/style.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/animate.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/hamburgers/hamburgers.min.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">

<!-- CSS Unify Theme -->
<link rel="stylesheet"
	href="resources/WB0412697/html/e-commerce/assets/css/styles.e-commerce.css">

<!-- CSS Customization -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/css/custom.css">
</head>

<body>
	<main> 
<!-- Header -->
<jsp:include page="../header.jsp" flush="false" />	
	
 <!-- Login -->
	<section class="container g-pt-100 g-pb-20">
		<div class="row justify-content-between">
			<div class="col-md-6 col-lg-5 flex-md-unordered g-mb-80">
				<div id="nanum"
					class="g-brd-around g-brd-gray-light-v3 g-bg-white rounded g-px-30 g-py-50 mb-4">
					<header class="text-center mb-4">
						<h1 class="h4 g-color-black g-font-weight-400">로그인 하기</h1>
					</header>

					<!-- Form -->
					<form class="g-py-15" id="login" action="loginCheck.do"
						method="post">
						<div class="mb-4">
							<div class="input-group rounded">
								<span
									class="input-group-addon g-width-45 g-brd-gray-light-v3 g-color-gray-dark-v5">
									<i class="icon-finance-067 u-line-icon-pro"></i>
								</span> <input
									class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15"
									type="text" name="m_id" placeholder="Id">
							</div>
						</div>

						<div class="mb-4">
							<div class="input-group rounded mb-4">
								<span
									class="input-group-addon g-width-45 g-brd-gray-light-v3 g-color-gray-dark-v5">
									<i class="icon-media-094 u-line-icon-pro"></i>
								</span> <input
									class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15"
									type="password" name="pwd" placeholder="Password">
							</div>
						</div>

						<div class="row justify-content-between mb-5">
							<div class="col align-self-center">
								<label
									class="form-check-inline u-check g-color-gray-dark-v5 g-font-size-13 g-pl-25 mb-0">
									<input class="hidden-xs-up g-pos-abs g-top-0 g-left-0"
									type="checkbox">
									<div
										class="u-check-icon-checkbox-v6 g-absolute-centered--y g-left-0">
										<i class="fa" data-check-icon="&#xf00c"></i>
									</div> Keep signed in
								</label>
							</div>
							<div class="col align-self-center text-right">
<!-- 								<a class="g-font-size-13" href="#">Forgot password?</a> -->
							</div>
						</div>

						<div class="mb-5">
							<button
								class="btn btn-block u-btn-primary g-font-size-default text-uppercase g-py-13"
								type="submit">Login</button>
						</div>

<!-- 						<div class="mb-4"> -->
<!-- 							<div class="input-group rounded"> -->
<!-- 								<span -->
<!-- 									class="input-group-addon g-width-45 g-brd-gray-light-v3 g-color-gray-dark-v5"> -->
<!-- 									<i class="icon-finance-067 u-line-icon-pro"></i> -->
<!-- 								</span> <input -->
<!-- 									class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" -->
<!-- 									type="email" placeholder="NONMEMBER"> -->
<!-- 							</div> -->


<!-- 						</div> -->

<!-- 						<div class="mb-5"> -->
<!-- 							<button -->
<!-- 								class="btn btn-block u-btn-primary g-font-size-default text-uppercase g-py-13" -->
<!-- 								type="button">NONMEMBER</button> -->
<!-- 							비회원으로 주문조회 하기 -->

<!-- 						</div> -->

					</form>
					<!-- End Form -->
				</div>

				<div class="text-center">
					<p class="g-color-gray-dark-v5 mb-0">
						Don't have an account? <a class="g-font-weight-600" href="sign_Up">signup</a>
					</p>
				</div>
			</div>

			<div id="nanum" class="col-md-6 flex-md-first g-mb-80">
				<div class="mb-5">
					<h2 class="h1 g-font-weight-400 mb-3">Welcome to Always
						Wearing</h2>
					<p class="g-color-gray-dark-v4">회원가입 혜택</p>
				</div>

				<div class="row">
					<div class="col-lg-9">
						<!-- Icon Blocks -->
						<div class="media mb-5">
							<div class="d-flex mr-3">
								<span
									class="align-self-center u-icon-v1 u-icon-size--lg g-color-primary">
									<i class="icon-finance-168 u-line-icon-pro"></i>
								</span>
							</div>
							<div class="media-body align-self-center">
								<h3 class="h5 g-font-weight-400">New Member</h3>
								<p class="g-color-gray-dark-v5 mb-0"font-family:'NanumGothic', sans-serif;>회원가입
									시 적립금 2,000point를 드립니다.</p>
							</div>
						</div>
						<!-- End Icon Blocks -->

						<!-- Icon Blocks -->
						<div class="media mb-5">
							<div class="d-flex mr-3">
								<span
									class="align-self-center u-icon-v1 u-icon-size--lg g-color-primary">
									<i class="icon-finance-193 u-line-icon-pro"></i>
								</span>
							</div>
							<div class="media-body align-self-center">
								<h3 class="h5 g-font-weight-400"font-family:'NanumGothic', sans-serif;>멤버십
									등급에 따라</h3>
								<p class="g-color-gray-dark-v5 mb-0"font-family:'NanumGothic', sans-serif;>즉시
									할인 적용</p>
							</div>
						</div>
						<!-- End Icon Blocks -->

						<!-- Icon Blocks -->
						<div class="media">
							<div class="d-flex mr-3">
								<span
									class="align-self-center u-icon-v1 u-icon-size--lg g-color-primary">
									<i class="icon-finance-122 u-line-icon-pro"></i>
								</span>
							</div>
							<div class="media-body align-self-center">
								<h3 class="h5 g-font-weight-400"font-family:'NanumGothic', sans-serif;>무료
									배송</h3>
								<p class="g-color-gray-dark-v5 mb-0"font-family:'NanumGothic', sans-serif;>10만원
									이상 구입 시 무료배송 쿠폰</p>
							</div>
						</div>
						<!-- End Icon Blocks -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Login --> 
	
	<!-- Footer --> 
<jsp:include page="../footer.jsp" flush="false" />


<a class="js-go-to u-go-to-v2" href="#"
		data-type="fixed"
		data-position='{
           "bottom": 15,
           "right": 15
         }'
		data-offset-top="400" data-compensation="#js-header"
		data-show-effect="zoomIn"> <i class="hs-icon hs-icon-arrow-top"></i>
	</a> </main>

	<!-- JS Global Compulsory -->
	<script
		src="resources/WB0412697/html/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/tether.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.js"></script>

	<!-- JS Implementing Plugins -->
	<script
		src="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

	<!-- JS Unify -->
	<script src="resources/WB0412697/html/assets/js/hs.core.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/components/hs.header.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/helpers/hs.hamburgers.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/components/hs.dropdown.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/components/hs.scrollbar.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.go-to.js"></script>

	<!-- JS Customization -->
	<script src="resources/WB0412697/html/assets/js/custom.js"></script>

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
		});
	</script>
</body>
</html>
