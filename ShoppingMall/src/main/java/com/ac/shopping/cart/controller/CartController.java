package com.ac.shopping.cart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CartController {
	
	@RequestMapping("cart")	
	public String cartview() {
		return "/Cart/cart";
	}
	
	@RequestMapping("shipping")	
	public String shipping() {
		return "/Cart/shipping";
	}

}
