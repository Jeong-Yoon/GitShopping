package com.ac.shopping.product.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ac.shopping.product.service.ProductServiceImpl;

@Controller
public class ProductController {

	@Inject
	ProductServiceImpl productService;
	
	@RequestMapping("/product-list.do")
	public String productlist(){
		return "/product-list";
	}
	
	//=================신발===================
	//신발 목록
	@RequestMapping("/shoes-list")
	public ModelAndView shoeslist(ModelAndView mav){
		mav.setViewName("/shoes-list");
		mav.addObject("list",productService.listShoes());
		return mav;
	}
	
	//신발 상세페이지
	//@RequestMapping("shoes-detail")
	//public 
}