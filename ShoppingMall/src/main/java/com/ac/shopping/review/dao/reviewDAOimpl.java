package com.ac.shopping.review.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class reviewDAOimpl implements reviewDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<String> selectbox(int case_type) {
		
		
		HashMap<String,Object> param = new HashMap<String,Object>();
		param.put("case_type", case_type);		
		
		System.out.println(case_type);		
		
		//System.out.println(sqlSession.selectList("review.selectbox",param));
		
		return sqlSession.selectList("review.selectbox",param);
		
	}	

}
