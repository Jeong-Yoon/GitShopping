package com.ac.shopping.review.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.shopping.review.dto.review_dto;
import com.ac.shopping.review.dto.selectDTO;

@Repository
public class reviewDAOImpl implements reviewDAO {

   @Autowired
   SqlSession sqlSession;
   
   @Override
   public List<review_dto> list() {
      //System.out.println(sqlSession.selectList("review.list"));
      return sqlSession.selectList("review.list");
   }
   @Override
   public void create(review_dto vo) throws Exception {
      sqlSession.insert("review.insert",vo);
   }
   
   @Override
   public review_dto read(int BOARD_INDEX) throws Exception {
      System.out.println(sqlSession.selectOne("review.view",BOARD_INDEX));
      return sqlSession.selectOne("review.view",BOARD_INDEX);
   }
   
     public List<selectDTO> selectbox(int case_type) {
         
         
         HashMap<String,Object> param = new HashMap<String,Object>();
         param.put("case_type", case_type);      
         
             
         
         System.out.println(sqlSession.selectList("review.selectbox",param));
         
         return sqlSession.selectList("review.selectbox",param);
         
     }
     
   public String namemapping(String product_name) {      
      
      return sqlSession.selectOne("review.namemap",product_name);
   }   
   
   
}