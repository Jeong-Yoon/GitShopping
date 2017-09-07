package com.ac.shopping.member.service;

import java.sql.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ac.shopping.member.dao.MemberDAOImpl;
import com.ac.shopping.member.dto.MemberDTO;
import com.ac.shopping.member.dto.SignUpDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAOImpl memberDao;

	// @Autowired
	// SqlSession sqlSession;

	// 회원가입
	@Override
	public void signUp(SignUpDTO sdto) {

		MemberDTO mdto = new MemberDTO();

			mdto.setM_id(sdto.getM_id());
			mdto.setPwd(sdto.getPwd());
			mdto.setName(sdto.getName());
			mdto.setBirth(Date.valueOf(sdto.getBirth1()));
			mdto.setAddress(sdto.getAddress());
			mdto.setPhone(sdto.getPhone());
			mdto.setEmail(sdto.getEmail());

			memberDao.signUp(mdto);

	}

	@Override
	public boolean loginCheck(MemberDTO mdto, HttpSession session) {
		boolean result = memberDao.loginCheck(mdto);
		if (result) { // true일 경우 세션에 등록
			MemberDTO vo2 = viewMember(mdto);
			// 세션 변수 등록
			session.setAttribute("m_id", vo2.getM_id());
			session.setAttribute("name", vo2.getName());
		}
		return result;
	}

	// 01_02. 회원 로그인 정보
	@Override
	public MemberDTO viewMember(MemberDTO mdto) {
		return memberDao.viewMember(mdto);
	}

	// 02. 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		// 세션 변수 개별 삭제
		// session.removeAttribute("userId");
		// 세션 정보를 초기화 시킴
		session.invalidate();
	}

}
