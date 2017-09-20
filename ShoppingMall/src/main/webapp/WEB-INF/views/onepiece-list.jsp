
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
	<script>

var star=0;

function starone(){
	star = 1;
}
function startwo(){
	star = 2;
}
function starthree(){
	star = 3;
}
function starfour(){
	star = 4;
}
function starfive(){
	star = 5;
}

 function list(page){
        location.href="${map.var}?cur_page="+page+"&search_method=${map.search_method}"
        		+"&pricerange=${map.first_value}"+"+++"+${map.second_value}
        		+"&board_like=${map.board_like}";
 }

</script>

<script>
body {margin: 10px; font-size: 13px}
.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
} 

.checks {position: relative;}
.checks input[type="radio"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip:rect(0,0,0,0);
  border: 0;
}
.checks input[type="radio"] + label {
  display: inline-block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}
.checks input[type="radio"] + label:before {
  content: '';
  position: absolute;
  left: 0;
  top: -4px;
  width: 21px;
  height: 21px;
  text-align: center;
  background: #fafafa;
  border: 1px solid #cacece;
  border-radius: 100%;
  box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05);
}
.checks input[type="radio"] + label:active:before,
.checks input[type="radio"]:checked + label:active:before  {
  box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1);
}
.checks input[type="radio"]:checked + label:before {
  background: #E9ECEE;
  border-color: #adb8c0;
}
.checks input[type="radio"]:checked + label:after {
  content: '';
  position: absolute;
  top: 1px;
  left: 5px;
  width: 13px;
  height: 13px;
  background: #99a1a7;
  border-radius: 100%;
  box-shadow: inset 0px 0px 10px rgba(0,0,0,0.3);
}

/* radio size */
.checks.small input[type="radio"] + label {
  font-size: 12px;
  padding-left: 25px;
}
.checks.small input[type="radio"] + label:before {
    top: -2px;
  width: 17px;
  height: 17px;
}
.checks.small input[type="radio"]:checked + label:after {
    top: 3px;
  width: 9px;
  height: 9px;
}
</script>

<script>
	function lee(){
		
	var range = document.getElementById('rangeSliderAmount3').innerText;	
	
	document.search.pricerange.value = range; 	
	document.search.board_like.value = star;
		
	document.search.submit();

	}
</script>
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
										<a href="${contextPath}/onepiece-detail?product_no=${list.product_no}"><img class="img-fluid"
											src="${contextPath}/resources/product/${list.product_no}_1.jpg"
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
								href="${contextPath}/onepiece-detail?product_no=${list.product_no}"> ${list.pro_name} </a>
						</h4>
						<span class="d-block g-color-black g-font-size-17">${list.pro_price}</span>
					</div>
					<!-- End Product Info -->

					<!-- Products Icons -->
					<ul class="list-inline media-body text-right">
											<li class="list-inline-item align-middle mx-0"><a
												class="u-icon-v1 u-icon-size--sm g-color-gray-dark-v5
												g-color-primary--hover g-font-size-15 rounded-circle"
												href="${contextPath}/Cart/wish?product_no=${list.product_no}&pro_price=${list.pro_price}"
												data-toggle="tooltip" data-placement="top"
												title="Add to Wishlist"> <i
													class="icon-medical-022 u-line-icon-pro"></i>
											</a></li>
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

							<c:if test="${map.boardPager.curBlock > 1}">
								<li class="list-inline-item hidden-down"><a
									class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
									href="javascript:list('1')">[처음]</a></li>
							</c:if>

							<c:if test="${map.boardPager.curBlock > 1}">
								<li class="list-inline-item hidden-down"><a
									class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
									href="javascript:list('${map.boardPager.prevPage}')">[이전]</a></li>
							</c:if>


							<!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 -->
							<c:forEach var="num" begin="${map.boardPager.blockBegin}"
								end="${map.boardPager.blockEnd}">
								<!-- **현재페이지이면 하이퍼링크 제거 -->
								<c:choose>
									<c:when test="${num == map.boardPager.curPage}">

										<li class="list-inline-item hidden-down"><a
											class="active u-pagination-v1__item g-width-30 g-height-30 g-brd-gray-light-v3 g-brd-primary--active g-color-white g-bg-primary--active g-font-size-12 rounded-circle g-pa-5">${num}</a></li>
									</c:when>
									<c:otherwise>
										<li class="list-inline-item hidden-down"><a
											class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
											href="javascript:list('${num}')">${num}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>


							<!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
							<c:if
								test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
								<li class="list-inline-item hidden-xs-down"><a
									class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
									href="javascript:list('${map.boardPager.nextPage}')">[다음]</a></li>
							</c:if>

							<!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
							<c:if test="${map.boardPager.curPage <= map.boardPager.totPage}">
								<li class="list-inline-item hidden-down"><a
									class="u-pagination-v1__item g-width-30 g-height-30 g-color-gray-dark-v5 g-color-primary--hover g-font-size-12 rounded-circle g-pa-5"
									href="javascript:list('${map.boardPager.totPage}')">[끝]</a></li>
							</c:if>

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
					<!-- Pricing -->
					<input type="hidden" name="pricerange"
						value="document.getElementById('rangeSliderAmount3').innerText">
					<div class="g-mb-30">
						<h3 class="h5 mb-3">Pricing</h3>

						<div class="text-center">
							<span class="d-block g-color-primary mb-4">&#8361;<span
								id="rangeSliderAmount3">20000</span>
							</span>

							<div id="rangeSlider1" class="u-slider-v1-3"
								data-result-container="rangeSliderAmount3" data-range="true"
								data-default="${map.first_value}, ${map.second_value}"
								data-min="10000" data-max="100000"></div>
						</div>
					</div>
					<!-- End Pricing -->

					<!-- Rating -->
					<div class="g-mb-30" id="rating">
						<h3 class="h5 mb-3">Rating</h3>

						<ul
							class="js-rating u-rating-v1 g-font-size-20 g-color-gray-light-v3 mb-0"
							data-hover-classes="g-color-primary">
							<li id="first" class="g-color-primary click" onclick="starone()">
								<i class="fa fa-star"></i>
							</li>
							<li id="second" class="g-color-primary click" onclick="startwo()">
								<i class="fa fa-star"></i>
							</li>
							<li id="third" class="g-color-primary click"
								onclick="starthree()"><i class="fa fa-star"></i></li>
							<li id="fourth" class="g-color-primary click"
								onclick="starfour()"><i class="fa fa-star"></i></li>
							<li id="five" onclick="starfive()"><i class="fa fa-star"></i>
							</li>
						</ul>
					</div>
					<!-- End Rating -->

					<hr>

					<form name="search" action="${contextPath}/onepiece-list/${map.var}">
						<input type="hidden" name="pricerange" value=""> <input
							type="hidden" name="board_like" value="1">

						<div class="checks small">

<%-- 							<c:choose> --%>
<%-- 								<c:when test="${map.search_method=='price'}"> --%>
<!-- 									<input type="radio" id="ex_rd2" name="search_method" -->
<!-- 										value="price" checked="checked"> -->
<!-- 									<label for="ex_rd2"> 가격으로 검색 </label> -->
<!--                      &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; -->
<!--                     <input type="radio" id="ex_rd2" name="search_method" -->
<!-- 										value="star"> -->
<!-- 									<label for="ex_rd2"> 좋아요로 검색 </label> -->
<%-- 								</c:when> --%>

<%-- 								<c:when test="${map.search_method=='star'}"> --%>
<!-- 									<input type="radio" id="ex_rd2" name="search_method" -->
<!-- 										value="price"> -->
<!-- 									<label for="ex_rd2"> 가격으로 검색 </label> -->
<!--                      &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; -->
<!--                     <input type="radio" id="ex_rd2" name="search_method" -->
<!-- 										value="star" checked="checked"> -->
<!-- 									<label for="ex_rd2"> 좋아요로 검색 </label> -->
<%-- 								</c:when> --%>

<%-- 								<c:otherwise> --%>
<!-- 									<input type="radio" id="ex_rd2" name="search_method" -->
<!-- 										value="price"> -->
<!-- 									<label for="ex_rd2"> 가격으로 검색 </label> -->
<!--                      &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; -->
<!--                     <input type="radio" id="ex_rd2" name="search_method" -->
<!-- 										value="star"> -->
<!-- 									<label for="ex_rd2"> 좋아요로 검색 </label> -->
<%-- 								</c:otherwise> --%>

<%-- 							</c:choose> --%>

						</div>

						<button
							class="btn btn-block u-btn-black g-font-size-default text-uppercase g-py-10"
							type="button" onclick="lee()">검색</button>
					</form>

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