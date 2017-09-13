package com.ac.shopping.product.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<ShoesDTO> listShoes() {
		return sqlSession.selectList("product.shoesList");
	}

	@Override
	public List<TBADTO> topListProduct(int start, int end, String search_option, String search_keyword, int idf) {
		
		HashMap<String,Object> param = new HashMap<String,Object>();		
		param.put("type",search_option);
		param.put("keyword", search_keyword);		
		param.put("start", start);
		param.put("end", end);
		param.put("idf", idf);
		
		return sqlSession.selectList("product.topListProduct",param);
	}

	@Override
	public List<TBADTO> bottomListProduct(int idf) {
		HashMap<String,Object> param = new HashMap<String,Object>();
		param.put("idf", idf);
		return sqlSession.selectList("product.bottomListProduct", param);
	}

	@Override
	public List<TBADTO> accListProduct(int idf) {
		HashMap<String,Object> param = new HashMap<String,Object>();
		param.put("idf", idf);
		return sqlSession.selectList("product.accListProduct", param);
	}
	
	@Override
	public List<Outer_OnepieceDTO> onepieceListProduct() {
		return sqlSession.selectList("product.onepieceList");
	}

	@Override
	public List<Outer_OnepieceDTO> outerListProduct() {
		return sqlSession.selectList("product.onepieceList");
	}

	@Override
	public int all_count_tba() {
		return sqlSession.selectOne("product.topListProduct_count");
	}

}
