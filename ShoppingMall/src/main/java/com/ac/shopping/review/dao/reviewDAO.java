package com.ac.shopping.review.dao;

import java.util.List;

import com.ac.shopping.review.dto.review_dto;


public interface reviewDAO {
   public List<review_dto> list();
   
   public void create(review_dto vo) throws Exception;
   public review_dto read(int BOARD_INDEX) throws Exception;
   public List<String> selectbox(int case_type);
   public String namemapping(String product_name);
}