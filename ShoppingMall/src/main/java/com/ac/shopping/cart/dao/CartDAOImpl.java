package com.ac.shopping.cart.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.SynchronousQueue;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ac.shopping.cart.dto.CartDTO;

@Repository
public class CartDAOImpl implements CartDAO {

	@Inject
	SqlSession sqlSession;
	
	//1. 장바구니 추가
	@Override
	public void insert(CartDTO cartDto) {
		sqlSession.insert("cart.insertCart", cartDto);
	}
	//2. 장바구니 목록
	@Override
	public List<CartDTO> listCart(String m_Id) {
		return sqlSession.selectList("cart.listCart", m_Id);
		
	}
	//3. 장바구니 삭제
	@Override
	public void delete(String product_No, String m_Id) {
		//파라미터 지정 필요
		
		HashMap<String,Object> param = new HashMap<String,Object>();
		param.put("product_No",product_No);
		param.put("m_Id",m_Id);
		
		System.out.println(product_No);
		System.out.println(m_Id);
		
		//넣을 변수는 2개인데 받을 수 있는 변수의 수는 1개 뿐일때
		//hashmap을 써서 두개의 변수를 임시로 param으로 통합시킨다.
		
		sqlSession.delete("cart.deleteCart", param);
	}
	//4.장바구니 수정
	@Override
	public void modifyCart(CartDTO cartDto) {
		sqlSession.update("cart.modifyCart", cartDto);
	}
	//장바구니 금액 합계
	@Override
	public int sumMoney(String m_Id) {
		sqlSession.selectOne("cart.sumMoney", m_Id);
		return sqlSession.selectOne("cart.sumMoney", m_Id);
	//장바구니 상품전체 금액select조회한 결과를 리턴
	}

	
	//6. 장바구니에 동일한 상품이 있는지 확인
	@Override
	public int countCart(String product_No, String m_Id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("product_No", product_No);
		map.put("m_Id", m_Id);
		return sqlSession.selectOne("cart.countCart", map);
		//장바구니에 동일한 상품이 있는지 select 조회한 결과를 리턴
	}

	@Override
	public void updateCart(CartDTO cartDto) {
		sqlSession.update("cart.sumCart", cartDto);
		//동일한 상품일 경우 수량을 합산한여 update
	}


}
