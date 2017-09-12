package com.ac.shopping.qa.controller;



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

import com.ac.shopping.qa.service.*;
import com.ac.shopping.service.BoardPager.qaPager;
import com.ac.shopping.qa.dto.*;

@Controller
public class qaController {

	@Inject
	qaServiceimpl qaService;
	
	String type_change_chk = "";
	
	//게시판 리스트
	@RequestMapping("/Q_A.do")
	public ModelAndView Q_A_list(Model model,HttpServletRequest request,HttpServletResponse response){
		
		int cur_page=1;
		String search_query_option = "";
		String search_option="";
		String search_keyword="";
		
		if(request.getParameter("cur_page")!=null){	
		cur_page = Integer.parseInt(request.getParameter("cur_page"));
		}
		
		if(request.getParameter("search_query_option")!=null){	
			search_query_option = request.getParameter("search_query_option");
		}		
		
		if(request.getParameter("search_option")!=null){
		search_option = request.getParameter("search_option");
		}
		
		if(request.getParameter("search_keyword")!=null){
		search_keyword = request.getParameter("search_keyword");
		}
		
		if(!type_change_chk.equals(search_query_option)){
			type_change_chk = search_query_option;
			search_option="";
			search_keyword="";
		}
		
		System.out.println(search_option);
		
		int count = qaService.all_count(search_query_option, search_option, search_keyword);
		// 페이지 나누기 관련 처리
			
		qaPager boardPager = new qaPager(count, cur_page);
	    int start = boardPager.getPageBegin();
	    int end = boardPager.getPageEnd();		
		      
		List<qa_dto> list = qaService.listAll(start,end,search_query_option, search_option, search_keyword);		
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list); // list
		map.put("count", count); // 레코드의 갯수
		map.put("search_query_opt", search_query_option);
		map.put("searchOption", search_option); // 검색옵션
		map.put("keyword", search_keyword); // 검색키워드
		map.put("boardPager", boardPager); // 페이징
		mav.addObject("map", map); // 맵에 저장된 데이터를 mav에 저장
		mav.setViewName("Q_A/Q_A"); // 뷰를 list.jsp로 설정
		return mav; 
		}
	
	//게시글 작성화면
	@RequestMapping(value="/Q_A/write", method=RequestMethod.GET)
	public String write(){
		return "/Q_A/write"; // write.jsp로 이동
	}
	
	//게시판 글쓰기 처리
	@RequestMapping("Q_A/insert.do")
	public String writeQnA(@ModelAttribute qa_dto vo) throws Exception{
		
		System.out.println(vo);
		qaService.create(vo);
		return "redirect:Q_A.do";
	} 
	
	
	
	
	//게시판 수정
    // 폼에서 입력한 내용들은 @ModelAttribute BoardVO vo로 전달됨
    @RequestMapping(value="update.do")
    public String update(@ModelAttribute qa_dto vo) throws Exception{
    	qaService.update(vo);
        return "redirect:Q_A.do";
    }
    
  //게시글 읽기
    @RequestMapping(value="Q_A/view", method=RequestMethod.GET)
    public ModelAndView viewdo(@RequestParam int BOARD_INDEX, HttpSession session) throws Exception{
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("Q_A/view");
    	mav.addObject("dto", qaService.read(BOARD_INDEX));
        return mav; // list.jsp로 List가 전달된다.
    }
	
  //게시글 삭제
    @RequestMapping("delete.do")
    public String delete(@RequestParam int board_index) throws Exception{
    	qaService.delete(board_index);
        return "redirect:Q_A.do";
    }
}
