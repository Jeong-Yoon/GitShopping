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
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/bootstrap/offcanvas.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-hs/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/hamburgers/hamburgers.min.css">

    <!-- Show / Copy Code -->
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/prism/themes/prism.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/custombox/custombox.min.css">

    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/animate.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/themes/base/jquery-ui.min.css">

    <!-- CSS Unify -->
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/css/unify.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/css/custom.css">
  </head>
<body>
<jsp:include page="../header.jsp" flush="false" />
<main>
<form name="form1" action="Q_A.do">
<table class="table table-striped table-hover ">
  <thead>
    <tr>
      <th>분류</th>
      <th>글 번호</th>
      <th>글 제목</th>
      <th>작성자</th>
      <th>작성 날짜</th>
    </tr>
  </thead>
  <c:forEach var="row" items="${map.list}">
    <tr>
      <td>${row.BOARD_QUERY_TYPE}</td>
      <td>${row.BOARD_INDEX}</td>
      
      <td><a href="${path}/shopping/Q_A/view?BOARD_INDEX=${row.BOARD_INDEX}&BOARD_WRITER=${row.BOARD_WRITER}">
      <c:choose>
      	<c:when test="${empty row.BOARD_REPLY}">
       		${row.BOARD_TITLE}
      	</c:when>
      	<c:otherwise>
      		[답변완료]${row.BOARD_TITLE}
      	</c:otherwise>
      </c:choose>
	</a></td>
	
      <td>${row.BOARD_WRITER}</td>
      <td>${row.BOARD_DATE}</td>
 
    </tr>
  </c:forEach>
  
  <tr>
            <td colspan="5">
                <!-- **처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
                <c:if test="${map.boardPager.curBlock > 1}">
                    <a href="javascript:list('1')">[처음]</a>
                </c:if>
                
                <!-- **이전페이지 블록으로 이동 : 현재 페이지 블럭이 1보다 크면 [이전]하이퍼링크를 화면에 출력 -->
                <c:if test="${map.boardPager.curBlock > 1}">
                    <a href="javascript:list('${map.boardPager.prevPage}')">[이전]</a>
                </c:if>
                
                <!-- **하나의 블럭에서 반복문 수행 시작페이지부터 끝페이지까지 -->
                <c:forEach var="num" begin="${map.boardPager.blockBegin}" end="${map.boardPager.blockEnd}">
                    <!-- **현재페이지이면 하이퍼링크 제거 -->
                    <c:choose>
                        <c:when test="${num == map.boardPager.curPage}">
                            <span style="color: red">${num}</span>&nbsp;
                        </c:when>
                        <c:otherwise>
                            <a href="javascript:list('${num}')">${num}</a>&nbsp;
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                
                <!-- **다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
                <c:if test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
                    <a href="javascript:list('${map.boardPager.nextPage}')">[다음]</a>
                </c:if>
                
                <!-- **끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
                <c:if test="${map.boardPager.curPage <= map.boardPager.totPage}">
                    <a href="javascript:list('${map.boardPager.totPage}')">[끝]</a>
                </c:if>
            </td>
        </tr>

</table> 

		 <select name="search_query_option" class="custom-select rounded-0" onchange="this.form.submit()">
            <!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
            <option value="all" <c:out value="${map.search_query_opt == 'all'?'selected':''}"/> >전체 보기</option>
            <option value="배송" <c:out value="${map.search_query_opt == '배송'?'selected':''}"/> >배송 문의</option>
            <option value="반품" <c:out value="${map.search_query_opt == '반품'?'selected':''}"/> >상품 문의</option>
            <option value="질문" <c:out value="${map.search_query_opt == '질문'?'selected':''}"/> > 교환 문의 </option>
            <option value="항의" <c:out value="${map.search_query_opt == '항의'?'selected':''}"/>  > 반품 문의 </option>
            <option value="주문변경" <c:out value="${map.search_query_opt == '주문변경'?'selected':''}"/> > 주문 변경 문의 </option>
        </select>

        <select name="search_option" class="custom-select rounded-0">
            <!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
            <option value="all" <c:out value="${map.searchOption == 'all'?'selected':''}"/> >작성자+제목+내용</option>
            <option value="BOARD_INDEX" <c:out value="${map.searchOption == 'BOARD_INDEX'?'selected':''}"/>>글 번호</option>
            <option value="M_ID" <c:out value="${map.searchOption == 'M_ID'?'selected':''}"/> > 작성자 </option>
            <option value="BOARD_TITLE" <c:out value="${map.searchOption == 'BOARD_TITLE'?'selected':''}"/> > 글 제목 </option>
            <option value="BOARD_CONTENT" <c:out value="${map.searchOption == 'BOARD_CONTENT'?'selected':''}"/> > 글 내용 </option>
        </select>
        <input name="search_keyword" value="${map.keyword}">
        
        <input type="submit" class="btn btn-md u-btn-primary rounded-0" value="조회">
        <input type="button" class="btn btn-md u-btn-primary rounded-0" name="write" value="글쓰기" onclick="location.href='http://localhost:7070/shopping/Q_A/write'"><br />
        ${map.count}개의 게시물이 있습니다.
       
        <!-- Go To Top --> <a class="js-go-to u-go-to-v1" href="#"
		data-type="fixed"
		data-position='{
           "bottom": 15,
           "right": 15
         }'
		data-offset-top="400" data-compensation="#js-header"
		data-show-effect="zoomIn"> <i class="hs-icon hs-icon-arrow-top"></i>
	</a> <!-- End Go To Top --> </form></main>

	<div id="modalMarkup"
		class="text-left modal-demo g-max-width-600 g-height-95x g-bg-white g-color-black g-pa-20"
		style="display: none;"></div>

	<!-- JS Global Compulsory -->
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
	<script src="${contextPath}/resources/WB0412697/html/assets/vendor/tether.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/bootstrap/offcanvas.js"></script>

	<!-- JS Implementing Plugins -->
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>

	<!-- jQuery UI Core -->
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/widget.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/version.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/keycode.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/position.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/unique-id.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/safe-active-element.js"></script>
	<!-- End jQuery UI Core -->

	<!-- jQuery UI Helpers -->
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/menu.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/mouse.js"></script>

	<!-- jQuery UI Widgets -->
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-ui/ui/widgets/autocomplete.js"></script>

	<!-- JS Unify -->
	<script src="${contextPath}/resources/WB0412697/html/assets/js/hs.core.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.header.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/helpers/hs.hamburgers.js"></script>
	<script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.go-to.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/helpers/hs.shortcode-filter.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.autocomplete-local-search.js"></script>

	<!-- Show / Copy Code -->
	<script src="${contextPath}/resources/WB0412697/html/assets/vendor/prism/prism.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/prism/components/prism-markup.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/prism/components/prism-css.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/prism/components/prism-clike.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/prism/components/prism-javascript.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/prism/plugins/toolbar/prism-toolbar.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/prism/plugins/copy-to-clipboard/prism-copy-to-clipboard.min.js"></script>

	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/custombox/custombox.min.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/vendor/clipboard/dist/clipboard.min.js"></script>

	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.scrollbar.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/helpers/hs.modal-markup.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.markup-copy.js"></script>
	<script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.tabs.js"></script>
	<script
		src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.modal-window.js"></script>




	<!-- JS Custom -->
	<script src="${contextPath}/resources/WB0412697/html/assets/js/custom.js"></script>
       
</form>

</body>
