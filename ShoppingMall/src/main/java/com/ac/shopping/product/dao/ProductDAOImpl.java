package com.ac.shopping.product.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.shopping.member.dto.MemberDTO;
import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	SqlSession sqlSession;

	//신발
	@Override
	public List<ShoesDTO> listShoes() {
		return sqlSession.selectList("product.shoesList");
	}
	@Override
	public HashMap detailshoes(String pro_no) {
		System.out.println(pro_no);
		ShoesDTO dto = sqlSession.selectOne("product.shoesDetail",pro_no);
		List<String> color = sqlSession.selectList("product.shoesColor",pro_no);
		List<String> size = sqlSession.selectList("product.shoesSize",pro_no);
		
		HashMap<String,Object> param = new HashMap<String,Object>();
		param.put("dto", dto);
		param.put("color", color);
		param.put("size", size);
		
		return param;
	}

	@Override
	public List<TBADTO> listTba() {
		return sqlSession.selectList("product.topList");
	}
	
	@Override
	public List<TBADTO> topListProduct(int first_value, int second_value,int start, int end, int idf) {
		
		HashMap<String,Object> param = new HashMap<String,Object>();		
		
		param.put("first_value", first_value);
		param.put("second_value", second_value);
		param.put("start", start);
		param.put("end", end);
		param.put("idf", idf);		
		
		return sqlSession.selectList("product.topListProduct",param);
	}

	@Override
	public List<TBADTO> bottomListProduct(int first_value,int second_value,int start, int end,int idf) {
		
		HashMap<String,Object> param = new HashMap<String,Object>();		
		
		param.put("first_value", first_value);
		param.put("second_value", second_value);
		param.put("start", start);
		param.put("end", end);
		param.put("idf", idf);		
		
		return sqlSession.selectList("product.bottomListProduct", param);
	}

	@Override
	public List<TBADTO> accListProduct(int idf) {
		HashMap<String,Object> param = new HashMap<String,Object>();
		param.put("idf", idf);
		return sqlSession.selectList("product.accListProduct", param);
	}
	
	//ONEPIECE
	@Override
	public List<Outer_OnepieceDTO> onepieceListProduct() {
		return sqlSession.selectList("product.onepieceList");
	}
	
	@Override
	public HashMap onepieceDetail(String pro_no){
		Outer_OnepieceDTO dto = sqlSession.selectOne("product.onepieceDetail",pro_no);
		List<String> color = sqlSession.selectList("product.opsColor",pro_no);
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("dto", dto);
		param.put("color", color);
		
		return param;
	}

	//OUTER
	@Override
	public List<Outer_OnepieceDTO> outerListProduct() {
		return sqlSession.selectList("product.outerList");
	}
	
	@Override
	public HashMap outerDetail(String pro_no){
		Outer_OnepieceDTO dto = sqlSession.selectOne("product.outerDetail",pro_no);
		List<String> color = sqlSession.selectList("product.outColor",pro_no);
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("dto", dto);
		param.put("color", color);
		
		return param;
	}	
	
	@Override
	public HashMap topDetail(String pro_no) {
		TBADTO dto = sqlSession.selectOne("product.topDetail", pro_no);
		List<String> color = sqlSession.selectList("product.topColor", pro_no);
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("dto", dto);
		param.put("color", color);
		return param;
	}

	@Override
	public HashMap bottomDetail(String pro_no) {
		TBADTO dto = sqlSession.selectOne("product.bottomDetail", pro_no);
		List<String> color = sqlSession.selectList("product.bottomColor", pro_no);
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("dto", dto);
		param.put("color", color);
		return param;
	}

	@Override
	public HashMap accDetail(String pro_no) {
		TBADTO dto = sqlSession.selectOne("product.accDetail", pro_no);
		List<String> color = sqlSession.selectList("product.accColor", pro_no);
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("dto", dto);
		param.put("color", color);
		return param;
	}
	
	@Override
	public int all_count_tba(int first_value, int second_value, int idf) {
		
		HashMap<String, Object> param = new HashMap<String, Object>();
				
		param.put("first_value", first_value);
		param.put("second_value", second_value);
		param.put("idf", idf);	
		
		return sqlSession.selectOne("product.topListProduct_count",param);		
	}
	
	@Override
	public int all_count_bottom(int first_value, int second_value, int idf) {
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		
		param.put("first_value", first_value);
		param.put("second_value", second_value);
		param.put("idf", idf);	
		
		return sqlSession.selectOne("product.bottomListProduct_count",param);
	}
	
	@Override
	public void addCart(String pro_no, String m_id) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("pro_no", pro_no);
		param.put("m_id", m_id);
		sqlSession.insert("product.addCart", param);
	}
	
	@Override
	public boolean addCart_chk(String pro_no, String m_id) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("pro_no", pro_no);
		param.put("m_id", m_id);
		
		int result = sqlSession.selectOne("product.cartOk", param);
		if(result==1) {
			return false;
		}  
		return true;
	}
	
	
}
