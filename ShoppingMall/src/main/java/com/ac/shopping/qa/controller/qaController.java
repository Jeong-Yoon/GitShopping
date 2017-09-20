package com.ac.shopping.qa.controller;



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
		
		for(int i=0;i<list.size();i++){
			
			if(i%5==0){
				list.get(i).setBOARD_PWD("success");
			}
			else if(i%5==1){
				list.get(i).setBOARD_PWD("danger");
			}
			else if(i%5==2){
				list.get(i).setBOARD_PWD("info");
			}
			else if(i%5==3){
				list.get(i).setBOARD_PWD("warning");
			}
			else if(i%5==4){
				list.get(i).setBOARD_PWD("active");
			}			
			
		}
		
		
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
	public String write(HttpSession session,HttpServletResponse response) throws IOException{
		
		if(session.getAttribute("m_id")==null){
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			out.println("<script>alert('게시글을 등록하려면 로그인이 필요합니다'); history.go(-1);</script>"); 
			out.flush();			
		}		
		
		return "/Q_A/write"; // write.jsp로 이동
	}
	
	//게시판 글쓰기 처리
	@RequestMapping("Q_A/insert.do")
	public String writeQnA(@ModelAttribute qa_dto vo, HttpSession session) throws Exception{
		
		System.out.println("?");
		System.out.println(vo);
		String User_id = (String)session.getAttribute("m_id");
		vo.setBOARD_WRITER(User_id);
		
		
		qaService.create(vo);
		return "redirect:/Q_A.do";
	} 
	
	//게시글 읽기
	@RequestMapping(value="/Q_A/view",method=RequestMethod.GET)
	public ModelAndView readd( HttpServletResponse response,@RequestParam("BOARD_INDEX") int BOARD_INDEX ,@RequestParam("BOARD_WRITER") String BOARD_WRITER, HttpSession session)throws Exception{
		
		int count = 0;
		ModelAndView mav = new ModelAndView();
		String User_id="";
		
		if(session.getAttribute("m_id")==null){
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			count = 1;
			out.println("<script>alert('글을 보시려면 로그인이 필요합니다'); history.go(-1);</script>"); 
			out.flush();
		}
		else{
			User_id = (String)session.getAttribute("m_id");
		}
		
		if(User_id.equals(BOARD_WRITER)) {			
		
		mav.setViewName("Q_A/view");
		mav.addObject("view", qaService.read(BOARD_INDEX));
		System.out.println(qaService.read(BOARD_INDEX));
		
		}		
		else if((count==0)&&(!User_id.equals(BOARD_WRITER))) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			out.println("<script>alert('다른 회원이 작성한 문의글입니다.'); history.go(-1);</script>"); 
			out.flush();			
		}
		return mav; // list.jsp로 List가 전달된다.
	}
	
	//게시판 수정
    // 폼에서 입력한 내용들은 @ModelAttribute BoardVO vo로 전달됨
    @RequestMapping(value="/Q_A/update.do")
    public String update(@ModelAttribute qa_dto vo) throws Exception{
    	
    	System.out.println(vo);    	
    	
    	qaService.update(vo);
        return "redirect:/Q_A.do";
    }
    
    //게시판 수정폼 이동
    @RequestMapping(value="/Q_A/modify")
    public String modify(HttpServletRequest request,HttpServletResponse response,Model model){
    	
    	String BOARD_WRITER = request.getParameter("BOARD_WRITER");
    	String BOARD_TITLE =  request.getParameter("BOARD_TITLE");
    	String BOARD_CONTENT =  request.getParameter("BOARD_CONTENT");
    	String BOARD_INDEX =  request.getParameter("BOARD_INDEX");
    	String BOARD_DATE=  request.getParameter("BOARD_DATE");
    	
    	model.addAttribute("BOARD_WRITER", BOARD_WRITER);
    	model.addAttribute("BOARD_TITLE", BOARD_TITLE);
    	model.addAttribute("BOARD_CONTENT", BOARD_CONTENT);
    	model.addAttribute("BOARD_INDEX", BOARD_INDEX);
    	model.addAttribute("BOARD_DATE", BOARD_DATE);
    			
        return "/Q_A/modify";
    }
	
  //게시글 삭제
    @RequestMapping("/Q_A/delete.do")
    public String delete(@RequestParam int BOARD_INDEX) throws Exception{
    	qaService.delete(BOARD_INDEX);
        return "redirect:/Q_A.do";
    }
}
