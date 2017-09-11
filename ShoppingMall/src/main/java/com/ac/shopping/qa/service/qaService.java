package com.ac.shopping.qa.service;

import java.util.List;

import com.ac.shopping.qa.dto.qa_dto;

public interface qaService {

	public int all_count(String search_query_option, String search_type, String search_keyword);
	public List<qa_dto> listAll(int start, int end, String search_query_option, String search_option, String search_keyword);
	
}
