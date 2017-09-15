
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <head>
    <!-- Title -->
    <title>E-commerce Signup Page | Unify - Responsive Website Template</title>

    <!-- Required Meta Tags Always Come First -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Favicon -->
    <link rel="shortcut icon" href="../favicon.ico">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">

    <!-- CSS Global Compulsory -->
    
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/icon-line/css/simple-line-icons.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/icon-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/icon-line-pro/style.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/jquery-ui/themes/base/jquery-ui.min.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/chosen/chosen.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/icon-hs/style.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/animate.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/hamburgers/hamburgers.min.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.css">
    <link rel="stylesheet" href="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.min.css">

    <!-- CSS Unify Theme -->
    <link rel="stylesheet" href="resources/WB0412697/html/e-commerce/assets/css/styles.e-commerce.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="resources/WB0412697/html/assets/css/custom.css">
  
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  

   <script >
function goto_url(act) {
  document.sign_Up.action = act;
  document.sign_Up.submit();
}
</script>  
  
  </head>

  <body>
  
    <main>
      <!-- Header -->
<jsp:include page="header.jsp" flush="false" />

      <!-- Signup -->
      <section class="container g-pt-100 g-pb-20" >
        <div class="row" id="nanum">
          <div class="col-lg-5 flex-lg-unordered g-mb-80" style="margin: 0 auto;">
            <div class="g-brd-around g-brd-gray-light-v3 g-bg-white rounded g-px-30 g-py-50 mb-4">
              <header class="text-center mb-4">
                <h1 class="h4 g-color-black g-font-weight-400"> Always Wearing MEMBER JOIN</h1>
              </header>

              <!-- Form -->
              <form class="g-py-15" name="sign_Up" action="sign_Up_OK" method="post" accept-charset="utf-8" onsubmit="document.charset='utf-8';">

                <div class="row" id="nanum">
                  <div class="col g-mb-20">
                    <input class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="text" name="m_id" placeholder="Id" required>
                  </div>
                  <div>
                  <button class="btn btn-block u-btn-primary g-font-size-default text-uppercase g-py-13" type="button" onclick="">중복확인</button>
                  </div>
                </div>
 
                <div class="g-mb-20" id="nanum">
                  <input class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="password"  name="pwd"placeholder="Password" required>
                </div>

                <div class="g-mb-20" id="nanum">
                  <input class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="password" name="pwd_confirm" placeholder="Confirm password" required>
                </div>

                 <div class="g-mb-20" id="nanum">
                 
                  <input class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="text" id="testDatepicker" name="birth" required>
                </div>
                
                <div class="g-mb-20" id="nanum">
                  <input class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="text" name="address" placeholder="address" required> 
                </div>
                
                 <div class="g-mb-20" id="nanum">
                  <input class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="text" name="name" placeholder="Name" required>
                </div>               

                <div class="g-mb-20" id="nanum">
                  <input class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="text" name="phone" placeholder="PhoneNumber는 -를 제외하고 입력해주세요." required>
                </div>
                
                <div class="g-mb-20" id="nanum">
                  <input class="form-control g-color-black g-bg-white g-bg-white--focus g-brd-gray-light-v3 rounded g-py-15 g-px-15" type="email" name="email" placeholder="Email address" required>
                </div>

                <div class="mb-1" id="nanum">
                  <label class="form-check-inline u-check g-color-gray-dark-v5 g-font-size-13 g-pl-25 mb-2">
                    <input class="hidden-xs-up g-pos-abs g-top-0 g-left-0" type="checkbox">
                    <div class="u-check-icon-checkbox-v6 g-absolute-centered--y g-left-0">
                      <i class="fa" data-check-icon="&#xf00c"></i>
                    </div>
                    I accept the <a href="#">Terms and Conditions</a>
                  </label>
                </div>

               

                <button class="btn btn-block u-btn-primary g-font-size-default text-uppercase g-py-13" type="submit">Signup</button>
               </form>
              <!-- End Form -->
            </div>

            <div class="text-center">
              <p class="g-color-gray-dark-v5 mb-0">Already have an account?
                <a class="g-font-weight-600" href="page-login">signin</a></p>
            </div>
          </div>
<!--           <div class="col-lg-7 flex-lg-first g-mb-80"> -->
<!--             <div class="g-pr-20--lg"> -->
              

<!--               <div class="row text-center mb-5"> -->
<!--                 <div class="col-sm-4 g-mb-10"> -->
                  
<!--                 </div> -->

               

           
<!--               </div> -->

             
<!--             </div> -->
<!--           </div> -->



        </div>
      </section>
      <!-- End Signup -->

      
      <!-- Footer -->
 <jsp:include page="footer.jsp" flush="false" />

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
    </main>

    <!-- JS Global Compulsory -->
    <script src="resources/WB0412697/html/assets/vendor/jquery/jquery.min.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/tether.min.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/bootstrap/bootstrap.min.js"></script>

    <!-- JS Implementing Plugins -->
    <script src="resources/WB0412697/html/assets/vendor/appear.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsparallaxer.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/dzsparallaxer/dzsscroller/scroller.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/dzsparallaxer/advancedscroller/plugin.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/chosen/chosen.jquery.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/image-select/src/ImageSelect.jquery.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/hs-megamenu/src/hs.megamenu.js"></script>
    <script src="resources/WB0412697/html/assets/vendor/malihu-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>

    <!-- JS Unify -->
    <script src="resources/WB0412697/html/assets/js/hs.core.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.header.js"></script>
    <script src="resources/WB0412697/html/assets/js/helpers/hs.hamburgers.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.dropdown.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.scrollbar.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.select.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.counter.js"></script>
    <script src="resources/WB0412697/html/assets/js/components/hs.go-to.js"></script>

    <!-- JS Customization -->
    <script src="resources/WB0412697/html/assets/js/custom.js"></script>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  

<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
   
 <script >
function goto_url(act) {
  document.sign_Up.action = act;
  document.sign_Up.submit();
}
</script>  
   
   
<script>

$(function() {
    $( "#testDatepicker" ).datepicker({
    	dateFormat: "yy-mm-dd",
    	 changeYear: true, 
    	 changeMonth: true,
    	 minDate: '-100y',
    	 yearRange : 'c-65:c+10',
         dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
         dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
         monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
    });
});
</script> 

    <!-- JS Plugins Init. -->
    <script>
      $(document).on('ready', function () {
        // initialization of header
        $.HSCore.components.HSHeader.init($('#js-header'));
        $.HSCore.helpers.HSHamburgers.init('.hamburger');

        // initialization of HSMegaMenu plugin
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

        // initialization of custom select
        $.HSCore.components.HSSelect.init('.js-custom-select');

        // initialization of counters
        var counters = $.HSCore.components.HSCounter.init('[class*="js-counter"]');
      });
    </script>
  </body>
</html>
