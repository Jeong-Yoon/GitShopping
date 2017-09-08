package com.ac.shopping.member.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ac.shopping.member.dto.MemberDTO;
import com.ac.shopping.member.dto.SignUpDTO;
import com.ac.shopping.member.service.MemberServiceImpl;



@Controller
public class MemberController {

	@Autowired
	private SqlSession sqlSession;
	
	@Inject 
	MemberServiceImpl memberService;
	// public String login(Model model){
	// System.out.println("login()");
	// return "login";
	// }

//	@RequestMapping("/login")
//	public String login() {
//		return "login";
//	}
	
	@RequestMapping("/sign_Up")
	public String signUP(){
		
		return "/sign_Up";
	}
//	@RequestMapping("/idChk")
//	public String 
	
	//회원가입
	@RequestMapping("/sign_Up_OK")
	public String signUP_OK(HttpServletRequest request,HttpServletResponse response,Model model) throws IOException{
		
		
		MemberDTO mdto = new MemberDTO();		
		if(request.getParameter("pwd").equals(request.getParameter("pwd_confirm"))){
			mdto.setM_id(request.getParameter("m_id"));
			mdto.setPwd(request.getParameter("pwd"));
			mdto.setName(request.getParameter("name"));
//			Date birth = Date.valueOf(request.getParameter("birth"));
			mdto.setBirth(Date.valueOf(request.getParameter("birth")));
			mdto.setAddress(request.getParameter("address"));
			mdto.setPhone(Integer.parseInt(request.getParameter("phone")));
			mdto.setEmail(request.getParameter("email"));
			
			memberService.signUp(mdto);
			return "shoppingindex";
		}else{
		
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			out.println("<script>alert('비밀번호가 일치하지 않습니다.'); history.go(-1);</script>"); 
			out.flush();
			return "sign_Up";
		}
	}
	
	@RequestMapping("/id_check")
	public ModelAndView ID_CHECK(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		String id = request.getParameter("m_id");
		System.out.println(id);
		int check =memberService.id_check(id);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();		
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("sign_Up");
		mav.addObject("id", id);
		
		if(id==null || id==""){
			out.println("<script>alert('아이디를 입력해주세요.'); history.go(-1);</script>");	
			out.close();
		}		
		if(check==0){
			out.println("<script>alert('사용 가능한 아이디입니다.'); </script>"); 				
		}
		else{
			out.println("<script>alert('이미 가입되어 있는 아이디입니다'); history.go(-1);</script>");
			out.close();			
		}		
		out.flush();
		return mav;
	}
	
//	@RequestMapping("login.do")
//    public String login(){
//        return "member/login";    // views/member/login.jsp�� ������
//    }
	
//	@RequestMapping(value = "/page-login", method = RequestMethod.GET)
//	public String pageLogin() {		
//		return "Member/page-login";
//	}
	
	@RequestMapping("/page-login")
	public String pageLogin() {		
		return "Member/page-login";
	}
    
    // 02. 로그인 처리
    @RequestMapping("loginCheck.do")
    public ModelAndView loginCheck(@ModelAttribute MemberDTO mdto, HttpSession session, HttpServletResponse response) throws IOException{
        boolean result = memberService.loginCheck(mdto, session);
        ModelAndView mav = new ModelAndView();
        if (result == true) { // 로그인 성공
        	 // main.jsp로 이동
            mav.setViewName("shoppingindex");
            mav.addObject("msg", "success");
        } else {     // 로그인 실패
        	// login.jsp로 이동
        	response.setContentType("text/html; charset=UTF-8");
        	PrintWriter out = response.getWriter();
        	out.println("<script>alert('입력하신 아이디 혹은 비밀번호가 다릅니다.'); history.go(-1);</script>");
        	out.close();
            mav.setViewName("Member/page-login");
        }
        return mav;
    }
    
    // 03. 로그아웃 처리
    @RequestMapping("logout.do")
    public ModelAndView logout(HttpSession session){
        memberService.logout(session);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("shoppingindex");
        mav.addObject("msg", "logout");
        return mav;
    }

}
