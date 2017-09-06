package com.ac.shopping.member.service;

import javax.servlet.http.HttpSession;

import com.ac.shopping.member.dto.MemberDTO;
import com.ac.shopping.member.dto.SignUpDTO;

public interface MemberService {
	
	public void signUp(SignUpDTO sdto);
	
	public void logout(HttpSession session);
	public boolean loginCheck(MemberDTO mdto, HttpSession session);
	public MemberDTO viewMember(MemberDTO mdto);
}
