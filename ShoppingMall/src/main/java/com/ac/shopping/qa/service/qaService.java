package com.ac.shopping.qa.service;

import java.util.List;

import com.ac.shopping.qa.dto.qa_dto;

public interface qaService {

	public int all_count(String search_query_option, String search_type, String search_keyword);
	public List<qa_dto> listAll(int start, int end, String search_query_option, String search_option, String search_keyword);
	
	// 게시글 작성
	public void create(qa_dto vo) throws Exception;

	// 게시글 수정
	public void update(qa_dto vo) throws Exception;
	
	// 게시글 읽기
	public qa_dto read(int BOARD_INDEX) throws Exception;

	// 게시글 삭제
	public void delete(int BOARD_INDEX) throws Exception;

}
