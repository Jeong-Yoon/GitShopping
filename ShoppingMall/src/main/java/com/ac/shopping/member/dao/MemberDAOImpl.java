package com.ac.shopping.member.dao;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.shopping.member.dto.MemberDTO;
import com.ac.shopping.member.dto.SignUpDTO;


@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	SqlSession sqlSession;
	
	//회원가입
	@Override
	public void signUp(MemberDTO mdto) {
		sqlSession.insert("member.signUp", mdto);
	}
	
	// 01_01. 회원 로그인 체크
	public boolean loginCheck(MemberDTO mdto) {
        String name = sqlSession.selectOne("member.loginCheck", mdto);
        return (name == null) ? false : true;
    }
    // 01_02. 회원 로그인 정보    
	@Override
    public MemberDTO viewMember(MemberDTO mdto) {
        return sqlSession.selectOne("member.viewMember", mdto);
    }
	// 02. 회원 로그아웃
    @Override
    public void logout(HttpSession sessin) {
    }
	
}
