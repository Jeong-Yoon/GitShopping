<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<!-- Title -->
<title>Table Designs | Unify - Responsive Website Template</title>

<!-- Required Meta Tags Always Come First -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Favicon -->
<link rel="shortcut icon" href="../../favicon.ico">

<!-- Google Fonts -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600"
	rel="stylesheet" type="text/css">

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/bootstrap/offcanvas.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-line/css/simple-line-icons.css">
<link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/icon-hs/style.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/hamburgers/hamburgers.min.css">

<!-- Show / Copy Code -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">
<link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/prism/themes/prism.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/custombox/custombox.min.css">

<link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/animate.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/jquery-ui/themes/base/jquery-ui.min.css">

<!-- CSS Unify -->
<link rel="stylesheet" href="resources/WB0412697/html/assets/css/unify.css">

<!-- CSS Customization -->
<link rel="stylesheet" href="resources/WB0412697/html/assets/css/custom.css">
</head>

<body>
	<main>


	<section class="container-fluid">
		<div class="row row-offcanvas row-offcanvas-left">

			<div class="col-sm-8 col-lg-9 col-xl-10 g-py-30 g-pa-30--md">


				<h1 class="g-font-weight-300 g-letter-spacing-1 g-pt-30 g-mb-35">Read</h1>

				<!-- Table #01 -->
				<section class="g-pb-100">
					<div class="container">
						<div class="text-center g-mb-50">
							<h2 class="h4">
								게시글 <span class="g-color-primary g-ml-5">#읽기</span>
							</h2>
						</div>

						<div id="shortcode1">
							<div class="shortcode-html">
								<!--Basic Table-->
								<div class="table-responsive">
									<table class="table table-bordered u-table--v2">
										<thead class="text-uppercase g-letter-spacing-1">
											<tr>
												<th class="g-font-weight-300 g-color-black">작성자</th>
												<th class="g-font-weight-300 g-color-black g-min-width-200">누구입니다</th>

											</tr>
										</thead>

										<tbody>
											<tr>
												<td class="align-middle text-nowrap">
													<h4 class="h6 g-mb-2">제목</h4>

												</td>
												<td class="align-middle">난 제목이야</td>
											</tr>

											<tr>
												<td class="align-middle text-nowrap">
													<h4 class="h6 g-mb-2">내용</h4>

												</td>
												<td class="align-middle">내용잉야</td>


											</tr>


											<tr>
												<td class="align-middle text-nowrap">
													<h4 class="h6 g-mb-2">회원등급</h4>

												</td>
												<td class="align-middle"><a
													class="btn btn-block u-btn-deeporange g-rounded-50 g-py-5"
													href="#" style="width: 100px;"> <i
														class="fa fa-bolt g-mr-5"></i> Stabile
												</a></td>
											</tr>
										</tbody>
									</table>
								</div>
								<!--End Basic Table-->
							</div>

							<div class="shortcode-scripts">
								<!-- JS Unify -->
								<script type="text/plain"
									src="resources/WB0412697/html/assets/js/components/hs.rating.js"></script>

								<!-- JS Plugins Init. -->
							<script type="text/plain">
  						$(document).ready(function () {
    					// Rating
   					 $.HSCore.components.HSRating.init($('.js-rating'), {
    					  spacing: 2
   							 });
  						});
							</script>
							</div>
						</div>
					</div>
				</section>
				<!-- End Table #01 -->

				<hr class="g-brd-gray-light-v4 my-0">
				<hr class="g-brd-gray-light-v4 my-0">
				<hr class="g-brd-gray-light-v4 my-0">

		<div style="width:650px; text-align: center;">
        <input type="hidden" name="BOARD_INDEX" value="${dto.BOARD_INDEX}">
				<button type="button"
					class="btn btn-md u-btn-primary rounded-0" id=btnSave>수정</button>
				<button type="button"
					class="btn btn-md u-btn-primary rounded-0" id="btnDelete">삭제</button>
   		 	</div>
		</div>
		</div>
	</section>




	<a class="js-go-to u-go-to-v1" href="#" data-type="fixed"
		data-position='{
           "bottom": 15,
           "right": 15
         }'
		data-offset-top="400" data-compensation="#js-header"
		data-show-effect="zoomIn"> <i class="hs-icon hs-icon-arrow-top"></i>
	</a> </main>

	<div id="modalMarkup"
		class="text-left modal-demo g-max-width-600 g-height-95x g-bg-white g-color-black g-pa-20"
		style="display: none;"></div>

	<!-- JS Global Compulsory -->
	<script src="resources/WB0412697/html/assets/vendor/jquery/jquery.min.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/tether.min.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/bootstrap/offcanvas.js"></script>

	<!-- JS Implementing Plugins -->
	<script src="resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/jquery.peity.min.js"></script>

	<!-- JS Unify -->
	<script src="resources/WB0412697/html/assets/js/hs.core.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.header.js"></script>
	<script src="resources/WB0412697/html/assets/js/helpers/hs.hamburgers.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.tabs.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.rating.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.chart.js"></script>

	<!-- jQuery UI Core -->
	<script src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/widget.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/version.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/keycode.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/position.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/unique-id.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/safe-active-element.js"></script>
	<!-- End jQuery UI Core -->

	<!-- jQuery UI Helpers -->
	<script src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/menu.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/mouse.js"></script>
	<!-- End jQuery UI Helpers -->

	<!-- jQuery UI Widgets -->
	<script src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/autocomplete.js"></script>
	<!-- End jQuery UI Widgets -->

	<!-- Show / Copy Code -->
	<script src="resources/WB0412697/html/assets/vendor/prism/prism.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/prism/components/prism-markup.min.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/prism/components/prism-css.min.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/prism/components/prism-clike.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/prism/components/prism-javascript.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/prism/plugins/toolbar/prism-toolbar.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/prism/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>

	<script
		src="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/custombox/custombox.min.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/clipboard/dist/clipboard.min.js"></script>

	<script src="resources/WB0412697/html/assets/js/components/hs.scrollbar.js"></script>
	<script src="resources/WB0412697/html/assets/js/helpers/hs.modal-markup.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.markup-copy.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.tabs.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.modal-window.js"></script>
	<script src="resources/WB0412697/html/assets/js/helpers/hs.shortcode-filter.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/components/hs.autocomplete-local-search.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.go-to.js"></script>

	<script>
		$(document).on('ready', function() {
			$.HSCore.helpers.HSModalMarkup.init('.js-modal-markup');

			$.HSCore.components.HSMarkupCopy.init('.js-copy');
		});
	</script>

	<!-- JS Custom -->
	<script src="resources/WB0412697/html/assets/js/custom.js"></script>

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
