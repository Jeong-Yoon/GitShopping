package com.ac.shopping.review.service;

import java.util.List;

import com.ac.shopping.review.dto.review_dto;

public interface reviewService {
   public List<review_dto> list();
      
   public void create(review_dto vo) throws Exception;
   public review_dto read(int BOARD_INDEX) throws Exception;
   public List<String> selectbox(String first, String second);
   public String namemapping(String product_name);
}