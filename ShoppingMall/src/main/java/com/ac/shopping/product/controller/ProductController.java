package com.ac.shopping.product.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ac.shopping.product.service.ProductServiceImpl;
import com.ac.shopping.service.BoardPager.ProductPager;
import com.ac.shopping.service.BoardPager.qaPager;

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
    @RequestMapping("shoes-detail")
    public String shoesdetail(){
    	return "shoes-detail";
    }

   //==================TOP===================
   // TOP 목록
   @RequestMapping("/top-list.do")
   public ModelAndView topList(ModelAndView mav,HttpServletRequest request,HttpServletResponse response) {
	   	mav.setViewName("/top-list");
      
      	int cur_page=1;
		
		String search_option="";
		String search_keyword="";
		
		if(request.getParameter("cur_page")!=null){	
		cur_page = Integer.parseInt(request.getParameter("cur_page"));
		}			
		
		if(request.getParameter("search_option")!=null){
		search_option = request.getParameter("search_option");
		}
		
		if(request.getParameter("search_keyword")!=null){
		search_keyword = request.getParameter("search_keyword");
		}      
      
		int count = productService.all_count_tba(search_option, search_keyword);
      
		ProductPager boardPager = new ProductPager(count, cur_page);
	    int start = boardPager.getPageBegin();
	    int end = boardPager.getPageEnd();	
	    
	    Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("count", count); // 레코드의 갯수		
		map.put("searchOption", search_option); // 검색옵션
		map.put("keyword", search_keyword); // 검색키워드
		map.put("boardPager", boardPager); // 페이징
		
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장      
	    mav.addObject("toplist", productService.topListProduct(start,end,search_option,search_keyword));
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
   
 //==================ACC===================
   // ACC 목록
   @RequestMapping("/acc-list")
   public ModelAndView accList(ModelAndView mav) {
      mav.setViewName("/acc-list");
      mav.addObject("acclist", productService.accListProduct());
      return mav;
   }
	
   //=====================ONEPIECE========================
   // ONEPIECE 목록
   @RequestMapping("/onepiece-list")
   public ModelAndView onepieceList(ModelAndView mav){
	   mav.setViewName("/onepiece-list");
	   mav.addObject("onepiecelist", productService.onepieceListProduct());
	   return mav;
   }

   //===================OUTER=================================
   // OUTER 목록
   @RequestMapping("/outer-list")
   public ModelAndView outerList(ModelAndView mav){
	   mav.setViewName("/outer-list");
	   mav.addObject("outerlist", productService.outerListProduct());
	   return mav;
   }
   
}