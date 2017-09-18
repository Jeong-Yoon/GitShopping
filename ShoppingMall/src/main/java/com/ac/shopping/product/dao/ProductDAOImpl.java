package com.ac.shopping.product.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ac.shopping.cart.dto.CartDTO;
import com.ac.shopping.member.dto.MemberDTO;
import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;
import com.ac.shopping.product.dto.WishListDTO;

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
	public void addWish(String pro_no, String m_id, int pro_price) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("pro_no", pro_no);
		param.put("m_id", m_id);
		param.put("pro_price", pro_price);
		sqlSession.insert("product.addWish", param);
	}
	
	@Override
	public boolean wish_chk(String pro_no, String m_id) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("pro_no", pro_no);
		param.put("m_id", m_id);
		
		int result = sqlSession.selectOne("product.wishOk", param);
		if(result==1) {
			return false;
		}  
		return true;
	}
	
	@Override
	public boolean cart_Chk(String pro_no, String m_id) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("pro_no", pro_no);
		param.put("m_id", m_id);
//		param.put("pro_color", pro_color);
		int result = sqlSession.selectOne("product.cart_Chk", param);
		if(result == 0){
			return true;
		}
		return false;
	}
	@Override
	public void addCart2(CartDTO cdto) {
//		HashMap<String, Object> param = new HashMap<String, Object>();
//		param.put("pro_no", cdto.getProduct_No());
//		param.put("m_id", cdto.getM_Id());
//		param.put("quantity", cdto.getBasket_Quantity());
//		param.put("pro_size", cdto.getPro_size());
//		param.put("pro_color", cdto.getPro_color());
		sqlSession.insert("product.addCart2",cdto);
	}
	@Override
	public List<WishListDTO> wishList(String m_id) {
		return sqlSession.selectList("product.wishList",m_id);
	}
}
