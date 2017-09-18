package com.ac.shopping;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {		
		return "shoppingindex";
	}
	@RequestMapping("/product-list")
	public String productlist(){
		return "/product-list";
	}
	@RequestMapping("/shoppingindex")
	public String shoppingindex(){
		return "/shoppingindex";
	}
	
	@RequestMapping(value = "Cart/cart", method = RequestMethod.GET)
	public String cart() {		
		return "Cart/cart";
	}
	
	@RequestMapping("/direct_shipping")
	public String shipping(HttpSession session, HttpServletRequest request, Model model, HttpServletResponse response) throws IOException {
		if (session.getAttribute("m_id") == null || session.getAttribute("m_id") == "") {
			response.setContentType("text/html; charset=UTF-8");
	    	PrintWriter out = response.getWriter();
	    	out.println("<script>alert('로그인이 필요합니다.'); history.go(-1);</script>");
	    	out.flush();
	    	out.close();
	    	return "";
		}
		String m_id = (String) session.getAttribute("m_id");
		String pro_no = request.getParameter("product_no");
		String pro_name = request.getParameter("pro_name");
		String pro_color;
		String pro_size;
		String pro_quantity = request.getParameter("quantity");
		if (request.getParameter("select_color") != "") {
			pro_color = request.getParameter("select_color");
		}else{
			pro_color = "-";
		}
		if (request.getParameter("pro_size") != "") {
			pro_size = request.getParameter("pro_size");
		} else{
			pro_size = "FREE";
		}
		String pro_price = request.getParameter("pro_price");
		int allprice = Integer.parseInt(pro_price)* Integer.parseInt(pro_quantity);
		model.addAttribute("pro_no", pro_no);
		model.addAttribute("pro_name", pro_name);
		model.addAttribute("pro_color", pro_color);
		model.addAttribute("pro_size", pro_size);
		model.addAttribute("pro_price", pro_price);
		model.addAttribute("pro_quantity",pro_quantity);
		model.addAttribute("allprice", allprice);
		if (m_id != null) {
			return "Cart/direct_shipping";
		}
		return "Cart/shipping_non";
	}
	
	//비회원
	@RequestMapping(value = "Cart/shipping_non", method = RequestMethod.GET)
	public String shipping_non() {		
		return "Cart/shipping_non";
	}
//	
//	@RequestMapping(value = "/page-signup", method = RequestMethod.GET)
//	public String pageSignup() {		
//		return "Member/page-signup";
//	}
}
