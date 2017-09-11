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
   public String productlist() {
      return "/product-list";
   }

   // =================신발===================
   // 신발 목록
   @RequestMapping("/shoes-list")
   public ModelAndView shoeslist(ModelAndView mav) {
      mav.setViewName("/shoes-list");
      mav.addObject("shoeslist", productService.listShoes());
      return mav;
   }

   // @RequestMapping("/shoes")
   // public String shoes(){
   // return "/shoes";
   // }
   // 신발 상세페이지
   // @RequestMapping("shoes-detail")
   // public

   //==================탑===================
   // Top 목록
   @RequestMapping("/top-list")
   public ModelAndView topList(ModelAndView mav) {
      mav.setViewName("/top-list");
      mav.addObject("toplist", productService.topListProduct());
      return mav;
   }
   
 //==================BOTTOM===================
   // BOTTOM 목록
   @RequestMapping("/bottom-list")
   public ModelAndView bottomList(ModelAndView mav) {
      mav.setViewName("/bottom-list");
      mav.addObject("bottomlist", productService.bottomListProduct());
      return mav;
   }
	

}