package com.ac.shopping.member.dao;

import javax.servlet.http.HttpSession;

import com.ac.shopping.member.dto.MemberDTO;
import com.ac.shopping.member.dto.SignUpDTO;

public interface MemberDAO {

	//회원가입
	public void signUp(MemberDTO mdto);
	
	// 01_01. 회원 로그인 체크
	public boolean loginCheck(MemberDTO mdto);
	// 01_02. 회원 로그인 정보
    public MemberDTO viewMember(MemberDTO mdto);
    // 02. 회원 로그아웃
    public void logout(HttpSession session);
}
