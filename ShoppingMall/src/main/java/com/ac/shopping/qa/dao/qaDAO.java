package com.ac.shopping.qa.dao;

import java.util.List;

import com.ac.shopping.qa.dto.qa_dto;

public interface qaDAO {
	
	public int allcount(String search_query_option, String search_type, String search_keyword, int query_case);
	public List<qa_dto> alllist(int start, int end, String search_query_option, String search_type, String search_keyword, int query_case);
	
    //게시글 작성
    public void create(qa_dto vo) throws Exception;
    
    //게시글 상세보기
    public qa_dto read(int BOARD_INDEX) throws Exception;
    
    //게시글 수정
    public void update(qa_dto vo) throws Exception;
   
    
    
    //게시글 삭제
    public void delete(int BOARD_INDEX) throws Exception;
	
}
