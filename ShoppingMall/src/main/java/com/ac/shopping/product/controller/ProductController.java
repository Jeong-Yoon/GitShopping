package com.ac.shopping.product.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ac.shopping.cart.dto.CartDTO;
import com.ac.shopping.cart.dto.Non_mem_CartDTO;
import com.ac.shopping.product.dto.WishListDTO;
import com.ac.shopping.product.service.ProductService;
import com.ac.shopping.service.BoardPager.ProductPager;
import com.ac.shopping.service.BoardPager.qaPager;

@Controller
public class ProductController {

	@Inject
	ProductService productService;

	@RequestMapping("/product-list.do")
	public String productlist() {
		return "/product-list";
	}

	@RequestMapping("/product-detail")
	public String productdetail() {
		return "/product-detail";
	}

	// =================신발===================
	// 신발 목록
	@RequestMapping("/shoes-list")
	public ModelAndView shoeslist(ModelAndView mav, HttpServletRequest request) {
		mav.setViewName("/shoes-list");
		int cur_page = 1;

		String search_method = "";
		int first_value = 10000;
		int second_value = 100000;
		int star_num = 1;

		if (request.getParameter("cur_page") != null) {
			cur_page = Integer.parseInt(request.getParameter("cur_page"));
		}

		if (request.getParameter("search_method") != null) {
			search_method = request.getParameter("search_method");
		}

		if ((request.getParameter("pricerange") != null) && (request.getParameter("pricerange").charAt(0) != '0')) {
			String price = request.getParameter("pricerange");

			first_value = Integer.parseInt(price.substring(0, 5));
			second_value = Integer.parseInt(price.substring(8));

		}

		if (request.getParameter("board_like") != null) {
			star_num = Integer.parseInt(request.getParameter("board_like"));
		}

		int count = productService.all_count_shoes(first_value, second_value);

		ProductPager boardPager = new ProductPager(count, cur_page);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();

		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(count);
		System.out.println(start);
		System.out.println(end);

		map.put("count", count); // 레코드의 갯수
		map.put("search_method", search_method); // 검색옵션
		map.put("first_value", first_value);
		map.put("second_value", second_value);
		map.put("boardPager", boardPager); // 페이징
		map.put("board_like", star_num);

		mav.addObject("map", map);
		mav.addObject("shoeslist", productService.listShoes(first_value, second_value, start, end));
		return mav;
	}

	// 신발 상세페이지
	@RequestMapping("/shoes-detail")
	public ModelAndView shoesdetail(ModelAndView mav, HttpServletRequest request) {
		String pro_no = request.getParameter("product_no");
		mav.setViewName("/shoes-detail");
		mav.addObject("shoesdetail", productService.detailshoes(pro_no));
		return mav;
	}

	// ==================TOP===================
	// TOP 목록
	@RequestMapping("/top-list/{var}")
	public ModelAndView topList(ModelAndView mav, HttpServletRequest request, HttpServletResponse response,
			@PathVariable String var) {
		mav.setViewName("/top-list");

		int cur_page = 1;

		String search_method = "";
		int first_value = 10000;
		int second_value = 100000;
		int star_num = 1;

		if (request.getParameter("cur_page") != null) {
			cur_page = Integer.parseInt(request.getParameter("cur_page"));
		}

		if (request.getParameter("search_method") != null) {
			search_method = request.getParameter("search_method");
		}

		if ((request.getParameter("pricerange") != null) && (request.getParameter("pricerange").charAt(0) != '0')) {
			String price = request.getParameter("pricerange");

			first_value = Integer.parseInt(price.substring(0, 5));
			second_value = Integer.parseInt(price.substring(8));

		}

		if (request.getParameter("board_like") != null) {
			star_num = Integer.parseInt(request.getParameter("board_like"));
		}

		int count = productService.all_count_tba(first_value, second_value, var);

		ProductPager boardPager = new ProductPager(count, cur_page);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("count", count); // 레코드의 갯수
		map.put("search_method", search_method); // 검색옵션
		map.put("first_value", first_value);
		map.put("second_value", second_value);
		map.put("boardPager", boardPager); // 페이징
		map.put("board_like", star_num);
		map.put("var", var);

		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.addObject("toplist", productService.topListProduct(first_value, second_value, start, end, var));
		return mav;
	}

	// TOP 상세페이지
	@RequestMapping("/top-detail")
	public ModelAndView topDetail(ModelAndView mav, HttpServletRequest request) {
		String pro_no = request.getParameter("product_no");
		mav.setViewName("/top-detail");
		mav.addObject("topdetail", productService.topDetail(pro_no));
		return mav;
	}

	// ==================BOTTOM===================
	// BOTTOM 목록
	@RequestMapping("/bottom-list/{var}")
	public ModelAndView bottomList(ModelAndView mav, HttpServletRequest request, HttpServletResponse response,
			@PathVariable String var) {
		mav.setViewName("/bottom-list");

		int cur_page = 1;

		String search_method = "";
		int first_value = 10000;
		int second_value = 100000;
		int star_num = 1;

		if (request.getParameter("cur_page") != null) {
			cur_page = Integer.parseInt(request.getParameter("cur_page"));
		}

		if (request.getParameter("search_method") != null) {
			search_method = request.getParameter("search_method");
		}

		if ((request.getParameter("pricerange") != null) && (request.getParameter("pricerange").charAt(0) != '0')) {
			String price = request.getParameter("pricerange");

			first_value = Integer.parseInt(price.substring(0, 5));
			second_value = Integer.parseInt(price.substring(8));

		}

		if (request.getParameter("board_like") != null) {
			star_num = Integer.parseInt(request.getParameter("board_like"));
		}

		int count = productService.all_count_bottom(first_value, second_value, var);

		ProductPager boardPager = new ProductPager(count, cur_page);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("count", count); // 레코드의 갯수
		map.put("search_method", search_method); // 검색옵션
		map.put("first_value", first_value);
		map.put("second_value", second_value);
		map.put("boardPager", boardPager); // 페이징
		map.put("board_like", star_num);
		map.put("var", var);

		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.addObject("bottomlist", productService.bottomListProduct(first_value, second_value, start, end, var));
		return mav;
	}

	// BOTTOM 상세페이지
	@RequestMapping("/bottom-detail")
	public ModelAndView bottomDetail(ModelAndView mav, HttpServletRequest request) {
		String pro_no = request.getParameter("product_no");
		mav.setViewName("/bottom-detail");
		mav.addObject("bottomdetail", productService.bottomDetail(pro_no));
		return mav;
	}

	// ==================ACC===================
	// ACC 목록
	@RequestMapping("/acc-list/{var}")
	public ModelAndView accList(ModelAndView mav, @PathVariable String var, HttpServletRequest request) {
		mav.setViewName("/acc-list");

		int cur_page = 1;

		String search_method = "";
		int first_value = 10000;
		int second_value = 100000;
		int star_num = 1;

		if (request.getParameter("cur_page") != null) {
			cur_page = Integer.parseInt(request.getParameter("cur_page"));
		}

		if (request.getParameter("search_method") != null) {
			search_method = request.getParameter("search_method");
		}

		if ((request.getParameter("pricerange") != null) && (request.getParameter("pricerange").charAt(0) != '0')) {
			String price = request.getParameter("pricerange");

			first_value = Integer.parseInt(price.substring(0, 5));
			second_value = Integer.parseInt(price.substring(8));

		}

		if (request.getParameter("board_like") != null) {
			star_num = Integer.parseInt(request.getParameter("board_like"));
		}

		int count = productService.all_count_acc(first_value, second_value, var);

		ProductPager boardPager = new ProductPager(count, cur_page);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("count", count); // 레코드의 갯수
		map.put("search_method", search_method); // 검색옵션
		map.put("first_value", first_value);
		map.put("second_value", second_value);
		map.put("boardPager", boardPager); // 페이징
		map.put("board_like", star_num);
		map.put("var", var);

		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.addObject("acclist", productService.accListProduct(first_value, second_value, start, end, var));
		return mav;
	}

	// ACC 상세 페이지
	@RequestMapping("/acc-detail")
	public ModelAndView accDetail(ModelAndView mav, HttpServletRequest request) {
		String pro_no = request.getParameter("product_no");
		mav.setViewName("/acc-detail");
		mav.addObject("accdetail", productService.accDetail(pro_no));
		return mav;
	}

	// =====================ONEPIECE========================
	// ONEPIECE 목록
	@RequestMapping("/onepiece-list")
	public ModelAndView onepieceList(ModelAndView mav, HttpServletRequest request) {
		mav.setViewName("/onepiece-list");
		int cur_page = 1;

		String search_method = "";
		int first_value = 10000;
		int second_value = 100000;
		int star_num = 1;

		if (request.getParameter("cur_page") != null) {
			cur_page = Integer.parseInt(request.getParameter("cur_page"));
		}

		if (request.getParameter("search_method") != null) {
			search_method = request.getParameter("search_method");
		}

		if ((request.getParameter("pricerange") != null) && (request.getParameter("pricerange").charAt(0) != '0')) {
			String price = request.getParameter("pricerange");

			first_value = Integer.parseInt(price.substring(0, 5));
			second_value = Integer.parseInt(price.substring(8));

		}

		if (request.getParameter("board_like") != null) {
			star_num = Integer.parseInt(request.getParameter("board_like"));
		}

		int count = productService.all_count_onepiece(first_value, second_value);
		ProductPager boardPager = new ProductPager(count, cur_page);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("count", count); // 레코드의 갯수
		map.put("search_method", search_method); // 검색옵션
		map.put("first_value", first_value);
		map.put("second_value", second_value);
		map.put("boardPager", boardPager); // 페이징
		map.put("board_like", star_num);

		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.addObject("onepiecelist", productService.onepieceListProduct(first_value, second_value, start, end));

		return mav;
	}

	// ONEPIECE 상세페이지
	@RequestMapping("/onepiece-detail")
	public ModelAndView onepieceDetail(ModelAndView mav, HttpServletRequest request) {
		String pro_no = request.getParameter("product_no");
		mav.setViewName("/onepiece-detail");
		mav.addObject("onepiecedetail", productService.onepieceDetail(pro_no));
		return mav;
	}

	// ===================OUTER=================================
	// OUTER 목록
	@RequestMapping("/outer-list")
	public ModelAndView outerList(ModelAndView mav, HttpServletRequest request) {
		mav.setViewName("/outer-list");
		int cur_page = 1;

		String search_method = "";
		int first_value = 10000;
		int second_value = 100000;
		int star_num = 1;

		if (request.getParameter("cur_page") != null) {
			cur_page = Integer.parseInt(request.getParameter("cur_page"));
		}

		if (request.getParameter("search_method") != null) {
			search_method = request.getParameter("search_method");
		}

		if ((request.getParameter("pricerange") != null) && (request.getParameter("pricerange").charAt(0) != '0')) {
			String price = request.getParameter("pricerange");

			first_value = Integer.parseInt(price.substring(0, 5));
			second_value = Integer.parseInt(price.substring(8));

		}

		if (request.getParameter("board_like") != null) {
			star_num = Integer.parseInt(request.getParameter("board_like"));
		}

		int count = productService.all_count_outer(first_value, second_value);
		ProductPager boardPager = new ProductPager(count, cur_page);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("count", count); // 레코드의 갯수
		map.put("search_method", search_method); // 검색옵션
		map.put("first_value", first_value);
		map.put("second_value", second_value);
		map.put("boardPager", boardPager); // 페이징
		map.put("board_like", star_num);

		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.addObject("outerlist", productService.outerListProduct(first_value, second_value, start, end));
		return mav;
	}

	// ONEPIECE 상세페이지
	@RequestMapping("/outer-detail")
	public ModelAndView outerDetail(ModelAndView mav, HttpServletRequest request) {
		String pro_no = request.getParameter("product_no");
		mav.setViewName("/outer-detail");
		mav.addObject("outerdetail", productService.outerDetail(pro_no));
		return mav;
	}

	// ===================ADD TO WISH============================
	@RequestMapping("/Cart/wish")
	public String addWish(HttpSession session, HttpServletRequest request, HttpServletResponse response, Model model)
			throws IOException {

		String pro_no = request.getParameter("product_no");
		String m_id = (String) session.getAttribute("m_id");
		System.out.println(m_id);
		int pro_price = Integer.parseInt(request.getParameter("pro_price"));
		System.out.println(pro_no);
		System.out.println(m_id);
		System.out.println(pro_price);

		if ((String) session.getAttribute("m_id") != null) {
			boolean result = productService.wish_chk(pro_no, m_id);
			if (result) {
				productService.addWish(pro_no, m_id, pro_price);
				List<WishListDTO> wdto = productService.wishList(m_id);

				System.out.println(wdto);

				model.addAttribute("wdto", wdto);

				return "Cart/wish";
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('선택하신 상품이 찜 목록에 있습니다.'); history.go(-1);</script>");
				out.close();
			}
		} else {
			System.out.println("?");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인을 먼저 해주세요.'); document.location.href='../page-login'</script>");
			out.flush();
			out.close();
		}
		return "";
	}

	   // ===================ADD TO CART============================
	   @RequestMapping("/cart_Chk")
	   public String cartChk(HttpSession session, HttpServletRequest request, HttpServletResponse response)
	         throws IOException {
	      System.out.println("m_id = " + (String)session.getAttribute("m_id"));
	      CartDTO cdto = new CartDTO();
	      if ((String)session.getAttribute("m_id") != null) {
	         cdto.setM_Id((String) session.getAttribute("m_id"));
	         cdto.setProduct_No(request.getParameter("product_no"));
	         cdto.setBasket_Quantity(Integer.parseInt(request.getParameter("quantity")));
	         System.out.println(request.getParameter("pro_size"));
	         String pro_quantity = request.getParameter("quantity");
	         if (request.getParameter("select_color") != "") {
	            cdto.setPro_color(request.getParameter("select_color"));
	         }else{
	            cdto.setPro_color("-");
	         }
	         if (request.getParameter("pro_size") != "") {
	            cdto.setPro_size(request.getParameter("pro_size"));
	         } else{
	            cdto.setPro_size("FREE");
	         }
//	         cdto.setPro_size(request.getParameter("pro_size"));
//	         cdto.setPro_color(request.getParameter("select_color"));
	         cdto.setPro_price(Integer.parseInt(request.getParameter("pro_price")));
	         cdto.setPro_name(request.getParameter("pro_name"));
	         // String pro_no = request.getParameter("product_no");
	         // String m_id = (String) session.getAttribute("m_id");
	         // System.out.println(pro_no);
	         // int quantity = Integer.parseInt(request.getParameter("quantity"));
	         // System.out.println(m_id);
	         // System.out.println(pro_no);
	         boolean result = productService.cart_Chk(cdto.getProduct_No(), cdto.getM_Id());
	         if (result) {
	            productService.addCart2(cdto);
	            return "redirect: cart_list.do";
	         } else {
	            response.setContentType("text/html; charset=UTF-8");
	            PrintWriter out = response.getWriter();
	            out.println("<script>alert('이미 담겨져 있는 상품입니다.'); history.go(-1);</script>");
	            out.flush();
	            out.close();
	            return "";
	         }

	      }else{
	          int identify=0;
	            
	            List<Non_mem_CartDTO> non_mem_pro = new ArrayList<Non_mem_CartDTO>();         
	            
	            if(session.getAttribute("nmC") !=null){
	               
	               List<Non_mem_CartDTO> prevNonmem = (List<Non_mem_CartDTO>) session.getAttribute("nmC");         
	            
	               for(int i=0;i < prevNonmem.size();i++){
	               
	                  Non_mem_CartDTO pnmC = new Non_mem_CartDTO();
	                  System.out.println("???");
	                  System.out.println("color = "+request.getParameter("select_color"));
	                  pnmC.setProduct_No(prevNonmem.get(i).getProduct_No());
	                  pnmC.setBasket_Quantity(prevNonmem.get(i).getBasket_Quantity());
	                  if (request.getParameter("select_color") != null) {
	                     pnmC.setPro_color(prevNonmem.get(i).getPro_color());
	               }else{
	                  pnmC.setPro_color("-");
	               }
	               if (request.getParameter("pro_size") != "") {
	                  pnmC.setPro_size(prevNonmem.get(i).getPro_size());
	               } else{
	                  pnmC.setPro_size("FREE");
	               }
	                  pnmC.setPro_price(prevNonmem.get(i).getPro_price());
	                  pnmC.setPro_name(prevNonmem.get(i).getPro_name());
	                  if(prevNonmem.get(i).getProduct_No().equals(request.getParameter("product_no"))){
	                     
	                     identify =1;
	                     response.setContentType("text/html; charset=UTF-8");
	                     PrintWriter out = response.getWriter();
	                     out.println("<script>alert('이미 담겨져 있는 상품입니다.'); history.go(-1);</script>");
	                     out.flush();
	                     out.close();
	                  }               
	                  non_mem_pro.add(pnmC);            
	               }   
	            }
	            
	            if(identify==0){
	               Non_mem_CartDTO nmC = new Non_mem_CartDTO();
	                              
	               nmC.setProduct_No(request.getParameter("product_no"));         
	               nmC.setBasket_Quantity(Integer.parseInt(request.getParameter("quantity")));
	               if (request.getParameter("select_color") != null) {
	                  nmC.setPro_color(request.getParameter("select_color"));
	               }else{
	                  nmC.setPro_color("-");
	               }
	               System.out.println(request.getParameter("pro_size"));
	               if (request.getParameter("pro_size") != "") {
	                  nmC.setPro_size(request.getParameter("pro_size"));
	               } else{
	                  nmC.setPro_size("FREE");
	               }
	               nmC.setPro_price(Integer.parseInt(request.getParameter("pro_price")));
	               nmC.setPro_name(request.getParameter("pro_name"));      
	            
	               non_mem_pro.add(nmC);
	            }
	            
	            session.setAttribute("nmC", non_mem_pro);   
	            
	            return "redirect:/non_mem_Cart";
	      }
	   }
	   
	}

}