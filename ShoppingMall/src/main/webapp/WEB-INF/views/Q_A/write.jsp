<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Title -->
<title>Bootstrap Forms | Unify - Responsive Website Template</title>

<!-- Required Meta Tags Always Come First -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Favicon -->
<link rel="shortcut icon" href="resources/WB0412697/html/favicon.ico">

<!-- Google Fonts -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=cyrillic,latin"
	rel="stylesheet" type="text/css">

<!-- CSS Global Compulsory -->

<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-line/css/simple-line-icons.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/icon-hs/style.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/hamburgers/hamburgers.min.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/bootstrap/offcanvas.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/jquery-ui/themes/base/jquery-ui.min.css">

<!-- Show / Copy Code -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/prism/themes/prism.css">
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/custombox/custombox.min.css">

<link rel="stylesheet"
	href="resources/WB0412697/html/assets/vendor/animate.css">

<!-- CSS Unify -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/css/unify.css">

<!-- CSS Customization -->
<link rel="stylesheet"
	href="resources/WB0412697/html/assets/css/custom.css">

<script>
	//JQUERY
	//등록버튼을 눌렀을 때
	$(document).ready(function() {
		$("#btnSave").click(function() {
			//var title = document.form1.title.value; ==> name속성으로 처리할 경우
			//var content = document.form1.content.value;
			//var writer = document.form1.writer.value;
			var BOARD_TITLE = $("#BOARD_TITLE").val();
			var BOARD_CONTENT = $("#BOARD_CONTENT").val();
			var BOARD_WRITER = $("#BOARD_WRITER").val();
			var BOARD_QUERY_TYPE = console.log($("#BOARD_QUERY_TYPE").find("option[value='"+ $("#select_box").val() + "']").text());
			
			if (BOARD_TITLE == "") {
				alert("제목을 입력하세요");
				document.form1.BOARD_TITLE.focus();
				return;
			}
			if (BOARD_CONTENT == "") {
				alert("내용을 입력하세요");
				document.form1.BOARD_CONTENT.focus();
				return;
			}
			if (BOARD_WRITER == "") {
				alert("이름을 입력하세요");
				document.form1.BOARD_WRITER.focus();
				return;
			}
			if (BOARD_QUERY_TYPE == "") {
				alert("말머리를 선택하세요");
				document.form1.BOARD_QUERY_TYPE.focus();
				return;
			}
			// 폼에 입력한 데이터를 서버로 전송
			document.form1.submit();
		});
	});
	
	
</script>
</head>

<body>
	<main>
	<div class="col-sm-8 col-md-9 col-xl-10 g-py-30 g-pa-30--md">
		<h1 class="g-font-weight-300 g-letter-spacing-1 g-mb-35">Q & A</h1>

		<!-- Form Controls -->
		<section class="g-py-50">
			<div>

				<!-- General Controls -->
				<div class="row">

					<div class="col-md-10">
						<div id="shortcode1">
							<div class="shortcode-html">
								<!-- General Controls -->
								<form class="g-brd-around g-brd-gray-light-v4 g-pa-30 g-mb-30"
									name="insert" action="insert.do">
									<div class="form-group g-mb-25">
										<label for="exampleInputEmail1">작성자:     	</label> 
										 ${sessionScope.m_id} 님
<!-- 										<input type="text" -->
<!-- 											class="form-control form-control-md rounded-0" -->
<!-- 											id="BOARD_WRITER" name="BOARD_WRITER" aria-describedby="emailHelp" -->
<!-- 											placeholder="작성자"> -->
									</div>									

									<div class="form-group g-mb-25">
										<label for="exampleInputPassword1">제목</label> <input
											type="text"
											class="form-control form-control-md rounded-0"
											id="BOARD_TITLE" name="BOARD_TITLE" placeholder="Title" required>
									</div>


									질문 종류 선택 : 
									<!-- Select Menu -->
<!-- 									<form class="g-bg-white g-brd-around g-brd-gray-light-v4 g-pa-30 g-mb-30"> -->
										<select class="custom-select rounded-0"  name="BOARD_QUERY_TYPE">
											<option selected>글머리 선택</option>
											<option value="shipment">배송</option>
											<option value="product">상품</option>
											<option value="exchange">교환</option>
											<option value="return">반품</option>
											<option value="order_change">주문배송변경</option>
										</select>
<!-- 									</form> -->
									<!-- End Select Menu -->
									
									<br/><br/>

									<div class="form-group g-mb-25">
										<label for="exampleTextarea">내용</label>
										<textarea class="form-control form-control-md rounded-0"
											id="BOARD_CONTENT" name="BOARD_CONTENT" rows="6" required></textarea>
									</div>

									<button type="submit"
										class="btn btn-md u-btn-primary rounded-0" id=btnSave>등록</button>
									<button type="button"
										class="btn btn-md u-btn-primary rounded-0"
										onclick="location.href='/shopping/Q_A.do'";>목록보기</button>
								</form>
								<hr class="g-brd-gray-light-v4 g-mx-minus-30">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>
	
	
	
	<hr class="g-brd-gray-light-v4 my-0">


	<!-- Go To Top --> <a class="js-go-to u-go-to-v1" href="#"
		data-type="fixed"
		data-position='{
           "bottom": 15,
           "right": 15
         }'
		data-offset-top="400" data-compensation="#js-header"
		data-show-effect="zoomIn"> <i class="hs-icon hs-icon-arrow-top"></i>
	</a> <!-- End Go To Top --> </main>

	<div id="modalMarkup"
		class="text-left modal-demo g-max-width-600 g-height-95x g-bg-white g-color-black g-pa-20"
		style="display: none;"></div>

	<!-- JS Global Compulsory -->
	<script
		src="resources/WB0412697/html/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
	<script src="resources/WB0412697/html/assets/vendor/tether.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/bootstrap/offcanvas.js"></script>

	<!-- JS Implementing Plugins -->
	<script
		src="resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>

	<!-- jQuery UI Core -->
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/widget.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/version.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/keycode.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/position.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/unique-id.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/safe-active-element.js"></script>
	<!-- End jQuery UI Core -->

	<!-- jQuery UI Helpers -->
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/menu.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/mouse.js"></script>

	<!-- jQuery UI Widgets -->
	<script
		src="resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/autocomplete.js"></script>

	<!-- JS Unify -->
	<script src="resources/WB0412697/html/assets/js/hs.core.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/components/hs.header.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/helpers/hs.hamburgers.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.go-to.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/helpers/hs.shortcode-filter.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/components/hs.autocomplete-local-search.js"></script>

	<!-- Show / Copy Code -->
	<script src="resources/WB0412697/html/assets/vendor/prism/prism.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/prism/components/prism-markup.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/prism/components/prism-css.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/prism/components/prism-clike.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/prism/components/prism-javascript.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/prism/plugins/toolbar/prism-toolbar.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/prism/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>

	<script
		src="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/custombox/custombox.min.js"></script>
	<script
		src="resources/WB0412697/html/assets/vendor/clipboard/dist/clipboard.min.js"></script>

	<script
		src="resources/WB0412697/html/assets/js/components/hs.scrollbar.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/helpers/hs.modal-markup.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/components/hs.markup-copy.js"></script>
	<script src="resources/WB0412697/html/assets/js/components/hs.tabs.js"></script>
	<script
		src="resources/WB0412697/html/assets/js/components/hs.modal-window.js"></script>




	<!-- JS Custom -->
	<script src="resources/WB0412697/html/assets/js/custom.js"></script>

	<!-- JS Plugins Init. -->
	<!--     <script> -->
	<!-- //       $(document).on('ready', function () { -->
	<!-- //         // initialization of go to -->
	<!-- //         $.HSCore.components.HSGoTo.init('.js-go-to'); -->
	<!-- //       }); -->

	<!-- //       $(window).on('load', function () { -->
	<!-- //         // initialization of autocomplet -->
	<!-- //         $.HSCore.components.HSLocalSearchAutocomplete.init('#autocomplete1'); -->

	<!-- //         // initialization of header -->
	<!-- //         $.HSCore.components.HSHeader.init($('#js-header')); -->
	<!-- //         $.HSCore.helpers.HSHamburgers.init('.hamburger'); -->

	<!-- //         // initialization of HSMegaMenu component -->
	<!-- //         $('.js-mega-menu').HSMegaMenu({ -->
	<!-- //           event: 'hover', -->
	<!-- //           pageContainer: $('.container'), -->
	<!-- //           breakpoint: 991 -->
	<!-- //         }); -->
	<!-- //       }); -->
	<!--     </script> -->


</body>
</html>
