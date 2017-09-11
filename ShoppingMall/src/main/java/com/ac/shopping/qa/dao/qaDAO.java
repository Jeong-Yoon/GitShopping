package com.ac.shopping.qa.dao;

import java.util.List;

import com.ac.shopping.qa.dto.qa_dto;

public interface qaDAO {

	public int allcount(String search_query_option, String search_type, String search_keyword, int query_case);
	public List<qa_dto> alllist(int start, int end, String search_query_option, String search_type, String search_keyword, int query_case);
}
