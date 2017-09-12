package com.ac.shopping.product.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ac.shopping.product.service.ProductServiceImpl;

@Controller
public class ProductController {

	@Inject
	ProductServiceImpl productService;
	
	@RequestMapping("/product_list")
	public String signUP(){
		
		return "/product-list";
	}
}
