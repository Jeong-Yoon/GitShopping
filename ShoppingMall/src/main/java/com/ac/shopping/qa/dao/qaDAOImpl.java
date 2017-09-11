package com.ac.shopping.qa.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.shopping.qa.dto.qa_dto;

@Repository
public class qaDAOImpl implements qaDAO{

	@Autowired
	SqlSession sqlSession;
	
	public int allcount(String search_query_option, String search_type, String search_keyword, int query_case) {

		HashMap<String,Object> param = new HashMap<String,Object>();
		param.put("query", "'"+search_query_option+"'");
		param.put("type",search_type);
		param.put("keyword", search_keyword);
		param.put("query_case", query_case);
		
		System.out.println("query_case : "+query_case);
		System.out.println(search_type);
		
		return sqlSession.selectOne("qa.qa_count_option",param);	
	}

	public List<qa_dto> alllist(int start, int end, String search_query_option, String search_type, String search_keyword, int query_case) {
		
		HashMap<String,Object> param = new HashMap<String,Object>();
		param.put("query", "'"+search_query_option+"'");
		param.put("type",search_type);
		param.put("keyword", search_keyword);
		param.put("query_case", query_case);
		param.put("start", start);
		param.put("end", end);
		
		System.out.println(search_query_option);
		
		System.out.println(query_case);
		
		return sqlSession.selectList("qa.listAll",param);
	}
}