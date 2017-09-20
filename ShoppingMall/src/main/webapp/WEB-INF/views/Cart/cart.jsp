<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>

  <head>
    <!-- Title -->
    <title>E-commerce Checkout Page | Unify - Responsive Website Template</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">

    <!-- CSS Global Compulsory -->


    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-line/css/simple-line-icons.css">

    <!-- CSS Implementing Plugins -->

 

    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-line-pro/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/icon-hs/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/chosen/chosen.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/animate.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/hamburgers/hamburgers.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.css">
    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">


    <!-- CSS Unify Theme -->

    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/e-commerce/assets/css/styles.e-commerce.css">

    <!-- CSS Customization -->


   <c:set var = "sum" value = "0" />
   <c:set var = "deliver" value = "0" />

    <link rel="stylesheet" href="${contextPath}/resources/WB0412697/html/assets/css/custom.css">
    
    <script>
    function goto_url(act) {
       document.update.action = act;
       document.update.submit();
     }
    </script>
    
  </head>

  <body>
    <main>
       <jsp:include page="../header.jsp" flush="false" />
    
      <!-- Checkout Form -->
      <div class="container g-pt-100 g-pb-70">
        <form class="js-validate js-step-form" data-progress-id="#stepFormProgress" data-steps-id="#stepFormSteps" name="update">
          <div class="g-mb-100">
            <!-- Step Titles -->
            <ul id="stepFormProgress" class="js-step-progress row justify-content-center list-inline text-center g-font-size-17 mb-0">
              <li class="col-3 list-inline-item g-mb-20 g-mb-0--sm">
                <span class="d-block u-icon-v2 u-icon-size--sm g-rounded-50x g-brd-primary g-color-primary g-color-white--active g-bg-primary--active g-color-white--checked g-bg-primary--checked mx-auto mb-3">
                  <i class="g-font-style-normal g-font-weight-700 g-hide-check">1</i>
                  <i class="fa fa-check g-show-check"></i>
                </span>
                <h4 class="g-font-size-16 text-uppercase mb-0">장바구니</h4>
              </li>

              <li class="col-3 list-inline-item g-mb-20 g-mb-0--sm">
                <span class="d-block u-icon-v2 u-icon-size--sm g-rounded-50x g-brd-gray-light-v2 g-color-gray-dark-v5 g-brd-primary--active g-color-white--active g-bg-primary--active g-color-white--checked g-bg-primary--checked mx-auto mb-3">
                  <i class="g-font-style-normal g-font-weight-700 g-hide-check">2</i>
                  <i class="fa fa-check g-show-check"></i>
                </span>
                <h4 class="g-font-size-16 text-uppercase mb-0">배송정보</h4>
              </li>

              <li class="col-3 list-inline-item">
                <span class="d-block u-icon-v2 u-icon-size--sm g-rounded-50x g-brd-gray-light-v2 g-color-gray-dark-v5 g-brd-primary--active g-color-white--active g-bg-primary--active g-color-white--checked g-bg-primary--checked mx-auto mb-3">
                  <i class="g-font-style-normal g-font-weight-700 g-hide-check">3</i>
                  <i class="fa fa-check g-show-check"></i>
                </span>
                <h4 class="g-font-size-16 text-uppercase mb-0">주문완료</h4>
              </li>
            </ul>
            <!-- End Step Titles -->
          </div>

          <div id="stepFormSteps">
            <!-- Shopping Cart -->
            <div id="step1" class="active">
              <div class="row">
                <div class="col-md-8 g-mb-30">
                  <!-- Products Block -->
                  <div class="g-overflow-x-scroll g-overflow-x-visible--lg">
                    <table class="text-center w-100">
                      <thead class="h6 g-brd-bottom g-brd-gray-light-v3 g-color-black text-uppercase">
                        <tr>
                          <th class="g-font-weight-400 text-left g-pb-20">PRODUCT</th>
                          <th class="g-font-weight-400 g-width-130 g-pb-20">가격</th>
                          <th class="g-font-weight-400 g-width-50 g-pb-20">수량</th>
                          <th class="g-font-weight-400 g-width-130 g-pb-20">총 가격</th>
                          <th></th>
                        </tr>
                      </thead>
                      <tbody>
                        <!-- Item-->
                        <c:choose>
                        <c:when test="${not empty sessionScope.m_id}">
                        <c:forEach var="row" items="${map.list}" >
                        <tr class="g-brd-bottom g-brd-gray-light-v3">
                          <td class="text-left g-py-25">


                            <img class="d-inline-block g-width-100 mr-4" src="${contextPath}/resources/product/${row.product_No}_1.jpg" alt="Image Description">
                            <div class="d-inline-block align-middle">
                              <h4 class="h6 g-color-black">${row.pro_name} </h4>
                              <ul class="list-unstyled g-color-gray-dark-v4 g-font-size-12 g-line-height-1_6 mb-0">
                                <li>Color: ${row.pro_color}</li>
                                <li>Size: ${row.pro_size}</li>
                              </ul>
                            </div>
                          </td>
                          <td class="g-color-gray-dark-v2 g-font-size-13">&#8361; ${row.pro_price} </td>
                          <td>
                            <div class="js-quantity input-group u-quantity-v1 g-width-80 g-brd-primary--focus">
                             <input class="js-result form-control text-center g-font-size-13 rounded-0 g-pa-0" name="m_basket_q" type="text" value="${row.basket_Quantity}" readonly>
                             <input type="hidden" name="m_product_no" value="${row.product_No}">

                              <div class="input-group-addon d-flex align-items-center g-width-30 g-bg-white g-font-size-12 rounded-0 g-px-5 g-py-6">
                                <i class="js-plus g-color-gray g-color-primary--hover fa fa-angle-up"></i>
                                <i class="js-minus g-color-gray g-color-primary--hover fa fa-angle-down"></i>
                              </div>
                            </div>
                          </td>
                          <td class="text-right g-color-black">
                            <span class="g-color-gray-dark-v2 g-font-size-13 mr-4">&#8361; ${row.pro_price * row.basket_Quantity}</span>
                            <span class="g-color-gray-dark-v4 g-color-black--hover g-cursor-pointer">
                              <a href="${contextPath}/cart_delete.do?product_No=${row.product_No}"><i class="mt-auto fa fa-trash"></i></a>
                            </span>
                          </td>
                        </tr>
                        </c:forEach>
                        </c:when>
                        <c:when test="${empty sessionScope.m_id}">
                        
                     
                        <c:forEach var="row" items="${sessionScope.nmC}" >
                        <tr class="g-brd-bottom g-brd-gray-light-v3">
                          <td class="text-left g-py-25">
                            <img class="d-inline-block g-width-100 mr-4" src="${contextPath}/resources/product/${row.product_No}_1.jpg" alt="Image Description">

                            &nbsp; &nbsp; &nbsp; &nbsp;
                            <div class="d-inline-block align-middle">
                              <h4 class="h6 g-color-black">${row.pro_name} </h4>
                              <ul class="list-unstyled g-color-gray-dark-v4 g-font-size-12 g-line-height-1_6 mb-0">
                                <li>Color: ${row.pro_color}</li>
                                <li>Size: ${row.pro_size}</li>
                              </ul>
                            </div>
                          </td>
                          <td class="g-color-gray-dark-v2 g-font-size-13">&#8361; ${row.pro_price} </td>
                          <td>
                            <div class="js-quantity input-group u-quantity-v1 g-width-80 g-brd-primary--focus">
                              <input class="js-result form-control text-center g-font-size-13 rounded-0 g-pa-0" type="text" name="m_basket_q" value="${row.basket_Quantity}" readonly>

                              <div class="input-group-addon d-flex align-items-center g-width-30 g-bg-white g-font-size-12 rounded-0 g-px-5 g-py-6">
                                <i class="js-plus g-color-gray g-color-primary--hover fa fa-angle-up"></i>
                                <i class="js-minus g-color-gray g-color-primary--hover fa fa-angle-down"></i>
                              </div>
                            </div>
                          </td>
                          <td class="text-right g-color-black">
                            <span class="g-color-gray-dark-v2 g-font-size-13 mr-4">&#8361; ${row.pro_price * row.basket_Quantity}</span>
                            <c:set var= "sum" value="${sum + row.pro_price*row.basket_Quantity}"/>
                            <span class="g-color-gray-dark-v4 g-color-black--hover g-cursor-pointer">
                              <a href="${contextPath}/cart_delete_non.do?product_No=${row.product_No}"><i class="mt-auto fa fa-trash"></i></a>
                            </span>
                          </td>
                        </tr>
                        </c:forEach>
                        </c:when>
                        </c:choose>
                   

                      </tbody>
                    </table>
                  </div>
                  <!-- End Products Block -->
                </div>

                <div class="col-md-4 g-mb-30">
                  <!-- Summary -->
                  <div class="g-bg-gray-light-v5 g-pa-20 g-pb-50 mb-4">
                    <h4 class="h6 text-uppercase mb-3">총 결제 금액</h4>

                                 <!-- Accordion -->
                    <div id="accordion-03" class="mb-4" role="tablist" aria-multiselectable="true">
                      <div id="accordion-03-heading-03" class="g-brd-y g-brd-gray-light-v2 py-3" role="tab">
                        <h5 class="g-font-weight-400 g-font-size-default mb-0">
                          <a class="g-color-gray-dark-v4 g-text-underline--none--hover" href="#accordion-03-body-03" data-toggle="collapse" data-parent="#accordion-03" aria-expanded="false" aria-controls="accordion-03-body-03">배송료 : &#8361;  
                        <c:choose>
                        <c:when test="${not empty sessionScope.m_id}">
                          ${map.deliveryFee }
                        </c:when>
                        <c:when test="${sum >=100000}">
                         0
                         </c:when>
                         <c:otherwise>
                         1500
                         <c:set var= "deliver" value="1500"/>
                        </c:otherwise>
                        </c:choose>
                           </a>
                        </h5>
                      </div>                    

                    </div>
                    <!-- End Accordion -->
                     
                    
                    <div class="d-flex justify-content-between mb-2">
                      <span class="g-color-black">Subtotal</span>
                      &#8361; 
                     <c:choose>
                     <c:when test="${not empty sessionScope.m_id}">
                     <span class="g-color-black g-font-weight-300">&#8361; ${map.sumMoney}</span>
                     </c:when>
                     <c:otherwise>
                     <c:out value="${sum}"/>
                     </c:otherwise>
                     </c:choose>
                    </div>
                    <div class="d-flex justify-content-between">
                      <span class="g-color-black">Order Total</span>
                     &#8361; 
                     <c:choose>
                     <c:when test="${not empty sessionScope.m_id}">
                      <span class="g-color-black g-font-weight-300">&#8361; ${map.allSum}</span>
                     </c:when>
                     <c:otherwise>
                      <c:out value="${sum+deliver}"/>
                     </c:otherwise>
                     </c:choose>
                     <input type="hidden" name="sum" value="${sum}">
                    </div>
                  </div>
                  <!-- End Summary -->

                  <c:choose>
                  <c:when test="${not empty sessionScope.m_id}">
                  <button class="btn btn-block u-btn-outline-black g-brd-gray-light-v1 g-bg-black--hover g-font-size-13 text-uppercase g-py-15 mb-4" type="button" onclick="goto_url('cart_update.do')">수정</button>
                  <button class="btn btn-block u-btn-primary g-font-size-13 text-uppercase g-py-15 mb-4" type="button" onclick="goto_url('shipping')">결제 진행하기</button>
                  </c:when>
                  <c:otherwise>
                  <button class="btn btn-block u-btn-outline-black g-brd-gray-light-v1 g-bg-black--hover g-font-size-13 text-uppercase g-py-15 mb-4" type="button" onclick="goto_url('cart_update_non.do')">수정</button>
                  <button class="btn btn-block u-btn-primary g-font-size-13 text-uppercase g-py-15 mb-4" type="button" onclick="goto_url('shipping_non')">결제 진행하기</button>
                  </c:otherwise>
                  </c:choose>
                  
                </div>
              </div>
            </div>
            <!-- End Shopping Cart -->

     
            
          </div>
        </form>
      </div>
      <!-- End Checkout Form -->

     
      <a class="js-go-to u-go-to-v2" href="#"
         data-type="fixed"
         data-position='{
           "bottom": 15,
           "right": 15
         }'
         data-offset-top="400"
         data-compensation="#js-header"
         data-show-effect="zoomIn">
        <i class="hs-icon hs-icon-arrow-top"></i>
      </a>
      
             <jsp:include page="../footer.jsp" flush="false" />
    </main>

    <!-- JS Global Compulsory -->


    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/tether.min.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.js"></script>


    <!-- JS Implementing Plugins -->


    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/chosen/chosen.jquery.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/vendor/image-select/src/ImageSelect.jquery.js"></script>


    <!-- JS Unify -->

  
    <script src="${contextPath}/resources/WB0412697/html/assets/js/hs.core.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.header.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/js/helpers/hs.hamburgers.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.dropdown.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.scrollbar.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.select.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.count-qty.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.step-form.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.validation.js"></script>
    <script src="${contextPath}/resources/WB0412697/html/assets/js/components/hs.go-to.js"></script>


    <!-- JS Customization -->

    <script src="${contextPath}/resources/WB0412697/html/assets/js/custom.js"></script>


    <!-- JS Plugins Init. -->
    <script>
      $(document).on('ready', function () {
        // initialization of header
        $.HSCore.components.HSHeader.init($('#js-header'));
        $.HSCore.helpers.HSHamburgers.init('.hamburger');

        // initialization of HSMegaMenu component
        $('.js-mega-menu').HSMegaMenu({
          event: 'hover',
          pageContainer: $('.container'),
          breakpoint: 991
        });

        // initialization of HSDropdown component
        $.HSCore.components.HSDropdown.init($('[data-dropdown-target]'), {
          afterOpen: function () {
            $(this).find('input[type="search"]').focus();
          }
        });

        // initialization of HSScrollBar component
        $.HSCore.components.HSScrollBar.init($('.js-scrollbar'));

        // initialization of go to
        $.HSCore.components.HSGoTo.init('.js-go-to');

        // initialization of form validation
        $.HSCore.components.HSValidation.init('.js-validate');

        // initialization of custom select
        $.HSCore.components.HSSelect.init('.js-custom-select');

        // initialization of quantity counter
        $.HSCore.components.HSCountQty.init('.js-quantity');

        // initialization of step form
        $.HSCore.components.HSStepForm.init('.js-step-form');
      });
    </script>
  </body>
</html>