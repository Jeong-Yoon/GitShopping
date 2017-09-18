package com.ac.shopping.cart.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.ac.shopping.cart.dto.CartDTO;

public interface CartDAO {

	// 1. 장바구니 추가
	public void insert(CartDTO cartDto);

	// 2. 장바구니 목록
	public List<CartDTO> listCart(String m_Id);

	// 3. 장바구니 삭제
	public void delete(String product_No, String m_Id);// 우리는 파라미터가cartId가 아니라 딴것임
	// 4.장바구니 수정

	public void modifyCart(CartDTO cartDto);

	// 5.장바구니 상품 금액합계
	public int sumMoney(String m_Id);

	// 6.장바구니 상품 확인
	public int countCart(String product_No, String m_Id);

	// 7.장바구니 상품수량 변경
	public void updateCart(CartDTO cartDto);

	

}
