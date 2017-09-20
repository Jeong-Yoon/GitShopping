package com.ac.shopping.review.controller;


import java.io.IOException;
import java.io.PrintWriter;
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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ac.shopping.review.dto.review_dto;
import com.ac.shopping.review.dto.selectDTO;
import com.ac.shopping.review.service.reviewServiceImpl;


@Controller
public class ReviewController {
   
   @Inject
   reviewServiceImpl reviewService;
   
   //리뷰 리스트 화면
   @RequestMapping("/review")
   public ModelAndView review(HttpServletRequest request) throws Exception{
      //System.out.println("?d");
      List<review_dto> list = reviewService.list();
      //System.out.println(list);
      
      ModelAndView mav = new ModelAndView();
      Map<String, Object> map = new HashMap<String, Object>();
      map.put("list", list);
      mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
      mav.setViewName("Review/review"); 
      return mav;
      //return "Review/review";
   }
   
   //리뷰 작성화면
      @RequestMapping(value="/review_write", method=RequestMethod.GET)
      public String write(HttpSession session,HttpServletResponse response) throws IOException{
    	  
    	 if(session.getAttribute("m_id")==null){
    		response.setContentType("text/html; charset=UTF-8");
 			PrintWriter out = response.getWriter();

 			out.println("<script>alert('리뷰글을 등록하려면 로그인이 필요합니다'); history.go(-1);</script>"); 
 			out.flush();
    	 }
    	  
         return "Review/review_write2"; 
      }   
      
   //리뷰 쓰기 
      @RequestMapping("review/insert.do")
      public String write(HttpServletRequest request, @ModelAttribute review_dto vo, HttpSession session) throws Exception{
         
    	 
    	  
    	  
         String product_no = request.getParameter("detail");         
         
         String User_id = (String)session.getAttribute("m_id");
         vo.setPRODUCT_NO(product_no);
         vo.setM_ID(User_id);
         
        
         System.out.println(User_id);            
         System.out.println("?");
         System.out.println(vo);
         reviewService.create(vo);
         return "redirect:/review";
      } 
      
   //리뷰 읽기
      @RequestMapping(value="/Review/review_view", method=RequestMethod.GET)
      public ModelAndView view(HttpServletResponse response, @RequestParam("BOARD_INDEX") int BOARD_INDEX, HttpSession session)throws Exception{
         
//         String User_id = (String)session.getAttribute("m_id");
         ModelAndView mav = new ModelAndView();
         
         mav.setViewName("Review/review_view");
         
         mav.addObject("view", reviewService.read(BOARD_INDEX));
         //System.out.println(reviewService.read(BOARD_INDEX));
         
         return mav; 
      }
      
      @RequestMapping("/select_OK")
       public String select_OK(HttpServletRequest request,HttpServletResponse response,Model model) throws UnsupportedEncodingException{
          
         request.setCharacterEncoding("UTF-8");
         String REVIEW_TITLE = "";
         String REVIEW_CONTENT = "";
          
         String first = request.getParameter("ctype");
         String second = request.getParameter("hobby");
        
         if(request.getParameter("REVIEW_TITLE")!=null){
            REVIEW_TITLE = request.getParameter("REVIEW_TITLE");
         }
         
         if(request.getParameter("REVIEW_CONTENT")!=null){
            REVIEW_CONTENT = request.getParameter("REVIEW_CONTENT");
         }
          
         model.addAttribute("first", Integer.parseInt(first));
         model.addAttribute("second", second);
         model.addAttribute("REVIEW_TITLE", REVIEW_TITLE);
         model.addAttribute("REVIEW_CONTENT", REVIEW_CONTENT);
          
         System.out.println(first);
         System.out.println(second);
         
         
         List<selectDTO> selectType = reviewService.selectbox(first,second);
         System.out.println(selectType);
         model.addAttribute("list", selectType);
         
          
         return "Review/review_write2";
      }
      
   
}