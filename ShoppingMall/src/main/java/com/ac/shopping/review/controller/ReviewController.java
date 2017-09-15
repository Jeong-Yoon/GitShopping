package com.ac.shopping.review.controller;

import java.io.UnsupportedEncodingException;
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

import com.ac.shopping.product.service.ProductService;
import com.ac.shopping.product.service.ProductServiceImpl;
import com.ac.shopping.qa.dto.qa_dto;
import com.ac.shopping.qa.service.qaServiceimpl;
import com.ac.shopping.review.service.reviewServiceimpl;
import com.ac.shopping.service.BoardPager.ProductPager;
import com.ac.shopping.service.BoardPager.qaPager;

@Controller
public class ReviewController {

	@Inject
	reviewServiceimpl reviewService;
	
	
	 @RequestMapping("/selectbox")
	 public String select(){
		return "/MultipleSelect";
	}
	 
	 @RequestMapping("/select_OK")
	 public String select_OK(HttpServletRequest request,HttpServletResponse response,Model model) throws UnsupportedEncodingException{
		 
		 request.setCharacterEncoding("UTF-8");
		
		 
		String first = request.getParameter("ctype");
		String second = request.getParameter("hobby");
		 
		model.addAttribute("first", Integer.parseInt(first));
		model.addAttribute("second", second);
		 
		System.out.println(first);
		System.out.println(second);
		
		
		List<String> selectType = reviewService.selectbox(first,second);
		
		model.addAttribute("list", selectType);
		
		 
		return "/MultipleSelect";
	}
	 
	
}