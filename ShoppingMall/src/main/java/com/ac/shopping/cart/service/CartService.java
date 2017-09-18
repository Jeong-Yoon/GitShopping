package com.ac.shopping.cart.service;

import java.util.List;

import com.ac.shopping.cart.dto.CartDTO;
import com.ac.shopping.cart.dto.OrderDTO;

public interface CartService {

	// 1. 장바구니 추가
	public void insert(CartDTO cartDTO);

	// 2. 장바구니 목록
	public List<CartDTO> listCart(String m_Id);

	// 3. 장바구니 삭제
	public void delete(String product_No, String m_Id);

	// 4. 장바구니 수정
	public void modifyCart(CartDTO cartDTO);

	// 5. 장바구니 금액 합계
	public int sumMoney(String m_Id);

	// 6. 장바구니 상품 확인
	public int countCart(String product_No, String m_Id);

	// 7. 장바구니 상품 수량 변경
	public void updateCart(CartDTO cartDTO);
	//8. 주문하기
	public void direct_order(CartDTO cdto, OrderDTO odto);
	public void order(String m_id, OrderDTO odto);
	
}