package com.ac.shopping.member.controller;


import java.sql.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public String signUP_OK(@ModelAttribute SignUpDTO sdto){
		memberService.signUp(sdto);
		return "shoppingindex";
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
    public ModelAndView loginCheck(@ModelAttribute MemberDTO mdto, HttpSession session){
        boolean result = memberService.loginCheck(mdto, session);
        ModelAndView mav = new ModelAndView();
        if (result == true) { // 로그인 성공
        	 // main.jsp로 이동
            mav.setViewName("shoppingindex");
            mav.addObject("msg", "success");
        } else {     // 로그인 실패
        	// login.jsp로 이동
            mav.setViewName("Member/page-login");
            mav.addObject("msg", "failure");
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
