package com.ac.shopping.product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.shopping.product.dto.ShoesDTO;

@Repository
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	SqlSession sqlSession;

	public List<ShoesDTO> listShoes() {
        return sqlSession.selectList("product.shoesList");
	}
	
}
