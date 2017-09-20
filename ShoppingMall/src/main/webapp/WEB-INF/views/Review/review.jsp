<%@page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>

<head>
    <!-- Title -->
    <title>Tables | Unify - Responsive Website Template</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Favicon -->
    <link rel="shortcut icon" href="../../favicon.ico">

    <!-- Google Fonts -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css">

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/bootstrap/offcanvas.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/icon-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/icon-hs/style.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/hamburgers/hamburgers.min.css">

    <!-- Show / Copy Code -->
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/prism/themes/prism.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/custombox/custombox.min.css">

    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/animate.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/jquery-ui/themes/base/jquery-ui.min.css">

    <!-- CSS Unify -->
    <link rel="stylesheet" href="resources/WB0412697/html/assets/css/unify.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="resources/WB0412697/html/assets/css/custom.css">
  </head>
 <body>
  <jsp:include page="../header.jsp" flush="false" />
    <main>
  <form action="#">
  <div id="shortcode6">
   <div class="shortcode-html">
	<!-- Hoverable Rows -->
	<div class="table-responsive">
  		<table class="table table-hover">
   			 <thead>
      			<tr>
		        <th>상품이름</th>
		        <th>이미지</th>
		        <th class="hidden-sm">제목</th>
		        <th>날짜</th>
		        <th>조회수</th>
		      </tr>
		    </thead>
		    
		   								
	<c:forEach var="row" items="${map.list}">
    <tbody>
      <tr>
        <td>${row.PRO_NAME}</td>
        
        <td class="align-middle" name="PRODUCT_NO">
		<img alt="Image Description" src="${contextPath}/resources/product/${row.PRODUCT_NO}_1.jpg" width="100" height="100">
		</td>
 
        
        <td class="hidden-sm">
        <a href="${path}/shopping/Review/review_view?BOARD_INDEX=${row.BOARD_INDEX}">
       		 ${row.REVIEW_TITLE}</a></td>
        <td>${row.REVIEW_DATE}</td>
        <td>${row.REVIEW_HIT}</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
<!--   <input type="submit" value="조회" class="btn btn-md u-btn-primary rounded-0"> -->
<%--   <c:if test="${sessionScope.M_ID != null}"> --%>
		<div style="text-align:center;">
        <input type="button" class="btn btn-md u-btn-primary rounded-0" name="write" value="글쓰기" onclick="location.href='/shopping/review_write'"><br />
<%--     </c:if> --%>
        </div>
</div>
<!-- End Hoverable Rows -->
                </div>
              </div>
              </form>
         </main>

    <div id="modalMarkup" class="text-left modal-demo g-max-width-600 g-height-95x g-bg-white g-color-black g-pa-20" style="display: none;"></div>

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
    <script src="resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.js"></script>

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

    <!-- JS Unify -->
    <script src="resources/WB0412697/html/assets/js/hs.core.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.header.js"></script>
    <script src="resources/WB0412697/html/assets/js/helpers/hs.hamburgers.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.tabs.js"></script>

    <!-- Show / Copy Code -->
    <script src="resources/WB0412697/html/assets/vendor/prism/prism.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/prism/components/prism-markup.min.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/prism/components/prism-css.min.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/prism/components/prism-clike.min.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/prism/components/prism-javascript.min.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/prism/plugins/toolbar/prism-toolbar.min.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/prism/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>

    <script src="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/custombox/custombox.min.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/clipboard/dist/clipboard.min.js"></script>

    <script src="resources/WB0412697/html/assets/js/components/hs.scrollbar.js"></script>
    <script src="resources/WB0412697/html/assets/js/helpers/hs.modal-markup.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.markup-copy.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.tabs.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.modal-window.js"></script>
    <script src="resources/WB0412697/html/assets/js/helpers/hs.shortcode-filter.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.autocomplete-local-search.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.go-to.js"></script>

    <script>
      $(document).on('ready', function () {
        $.HSCore.helpers.HSModalMarkup.init('.js-modal-markup');

        $.HSCore.components.HSMarkupCopy.init('.js-copy');
      });
    </script>

    <!-- JS Custom -->
    <script src="resources/WB0412697/html/assets/js/custom.js"></script>

    <!-- JS Plugins Init. -->
    <script>
      $(window).on('load', function () {
        // initialization of header
        $.HSCore.components.HSHeader.init($('#js-header'));
        $.HSCore.helpers.HSHamburgers.init('.hamburger');

        // initialization of autocomplet
        $.HSCore.components.HSLocalSearchAutocomplete.init('#autocomplete1');

        // initialization of go to
        $.HSCore.components.HSGoTo.init('.js-go-to');

        // initialization of HSMegaMenu component
        $('.js-mega-menu').HSMegaMenu({
          event: 'hover',
          pageContainer: $('.container'),
          breakpoint: 991
        });
      });
    </script>
  </body>
