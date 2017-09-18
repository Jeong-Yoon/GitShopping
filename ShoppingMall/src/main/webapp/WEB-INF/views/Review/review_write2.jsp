<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


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


</head>

<body>
  <jsp:include page="../header.jsp" flush="false" />
	<main>
	<div class="col-sm-8 col-md-9 col-xl-10 g-py-30 g-pa-30--md">
		<h1 class="g-font-weight-300 g-letter-spacing-1 g-mb-35">리뷰 작성하기</h1>

		<!-- Form Controls -->
		<section class="g-py-50">
			<div>

				<!-- General Controls -->
				<div class="row" style="margin: 0 auto;">

					<div class="col-md-10">
						<div id="shortcode1">
							<div class="shortcode-html">
								<!-- General Controls -->
								<form class="g-brd-around g-brd-gray-light-v4 g-pa-30 g-mb-30"
									name="clothes" >

									<div class="form-group g-mb-25">
										<label for="exampleInputPassword1">제목</label> <input
											type="text"
											class="form-control form-control-md rounded-0"
											 name="REVIEW_TITLE" >
								</div>								
	 <select class="custom-select rounded-0"  name="ctype" onChange=clotheschange(document.clothes.ctype.options.selectedIndex)>
         <option selected value="">-선택-</option>
         <c:choose>
         <c:when test="${first == 1}">
         <option value=1 selected="selected" >TOP</option>
         <option value=2 >BOTTOM</option>
         <option value=3 >ACC</option>
         <option value=4 >OUTER</option>
         <option value=5 >ONE-PEICE</option>
         <option value=6 >SHOES</option>         
         </c:when>
         
         <c:when test="${first == 2}">
         <option value=1 >TOP</option>
         <option value=2 selected="selected">BOTTOM</option>
         <option value=3 >ACC</option>
         <option value=4 >OUTER</option>
         <option value=5 >ONE-PEICE</option>
         <option value=6 >SHOES</option>         
         </c:when>
         
         <c:when test="${first == 3}">
         <option value=1 >TOP</option>
         <option value=2 >BOTTOM</option>
         <option value=3 selected="selected">ACC</option>
         <option value=4 >OUTER</option>
         <option value=5 >ONE-PEICE</option>
         <option value=6 >SHOES</option>         
         </c:when>
         
         <c:when test="${first == 4}">
         <option value=1 >TOP</option>
         <option value=2 >BOTTOM</option>
         <option value=3 >ACC</option>
         <option value=4 selected="selected" >OUTER</option>
         <option value=5 >ONE-PEICE</option>
         <option value=6 >SHOES</option>         
         </c:when>
         
         <c:when test="${first == 5}">
         <option value=1 >TOP</option>
         <option value=2 >BOTTOM</option>
         <option value=3 >ACC</option>
         <option value=4  >OUTER</option>
         <option value=5 selected="selected" >ONE-PEICE</option>
         <option value=6 >SHOES</option>         
         </c:when>
         
         <c:when test="${first == 6}">
         <option value=1 >TOP</option>
         <option value=2 >BOTTOM</option>
         <option value=3 >ACC</option>
         <option value=4  >OUTER</option>
         <option value=5  >ONE-PEICE</option>
         <option value=6 selected="selected" >SHOES</option>         
         </c:when>         
         
         <c:otherwise>
         <option value=1 >TOP</option>
         <option value=2 >BOTTOM</option>
         <option value=3 >ACC</option>
         <option value=4 >OUTER</option>
         <option value=5 >ONE-PEICE</option>
         <option value=6 >SHOES</option>    
         
         </c:otherwise>
         
      	</c:choose>
      	
      </select>
   
      <select class="custom-select rounded-0"  name=hobby size=1 onChange="goto_url('select_OK')">
         <option selected value="" >-선택-</option>
         <option value=""></option>
      </select>
 
      <select class="custom-select rounded-0" name="detail">
         <option value="" >-선택-</option>
      <c:forEach var="result" items="${list}">

         <option value="${result}">${result}</option>

      </c:forEach>   
      </select>

									<div class="form-group g-mb-25">
										<label for="exampleTextarea">내용</label>
										<textarea class="form-control form-control-md rounded-0"
											 name="REVIEW_CONTENT" rows="6" cols="50"></textarea>
									</div>

									<button type="button"
										class="btn btn-md u-btn-primary rounded-0" id=btnSave onClick="goto_url('review/insert.do')">등록</button>
									<button type="button"
										class="btn btn-md u-btn-primary rounded-0"
										onclick="location.href='http://localhost:7070/shopping/review'";>목록보기</button>
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
	
	  <script >
function goto_url(act) {
  document.clothes.action = act;
  document.clothes.submit();
}
</script>  

<script>
var hobby0 = new Array("-선택-","");
var hobby1 = new Array("-선택-","T-shits/Jackets","맨투맨/후드","니트","블라우스");
var hobby2 = new Array("-선택-","shorts_pants","long_pants","training");
var hobby3 = new Array("-선택-","귀걸이","목걸이","팔찌","양말","벨트");
var hobby4 = new Array("-선택-","분류 없음");
var hobby5 = new Array("-선택-","분류 없음");
var hobby6 = new Array("-선택-","분류 없음");

function clotheschange(item){
    var temp, i=0, j=0;
    var ccount, cselect;   
  
    temp = document.clothes.hobby;

    var prevselect = '<c:out value="${second}"/>';
    var selectedIndex = 0;
    
    
    for (i=(temp.options.length-1) ; i>0 ; i--){ temp.options[i] = null; }
    eval('ccount = hobby' + item + '.length');
    for (j=0 ; j<ccount ; j++) {
        eval('cselect = hobby' + item + '[' + j + '];');
        temp.options[j]= new Option(cselect,cselect); 
        if(temp.options[j].value === prevselect){
                
           selectedIndex = j;
        }        
    }  
    
    
    
    
    temp.options[selectedIndex].selected=true;   
    return true;
  
}


</script>



<script>

    (function(){
       var type = '<c:out value="${first}"/>';   
       clotheschange(type);

    })()

  </script>

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
