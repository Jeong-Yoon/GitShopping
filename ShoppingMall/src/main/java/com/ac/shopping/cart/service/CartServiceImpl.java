package com.ac.shopping.cart.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.ac.shopping.cart.dao.CartDAO;
import com.ac.shopping.cart.dao.CartDAOImpl;
import com.ac.shopping.cart.dto.CartDTO;

@Service
public class CartServiceImpl implements CartService{

	@Inject
	CartDAOImpl cartDao;
	
	//1. 장바구니 추가
	@Override
	public void insert(CartDTO cartDto) {
		// TODO Auto-generated method stub
	}
	//2. 장바구니 목록 보기
	@Override
	public List<CartDTO> listCart(String m_Id) {
		return cartDao.listCart("m_id");
	}
	//3. 장바구니 삭제
	@Override
	public void delete(String product_No, String m_Id) {
		cartDao.delete(product_No, m_Id);
	}
	//4. 장바구니 수정
	@Override
	public void modifyCart(CartDTO cartDto) {
		cartDao.modifyCart(cartDto);
	}
	//5. 장바구니 금액 합계
	@Override
	public int sumMoney(String m_Id) {
		return cartDao.sumMoney(m_Id);
	}
	//6. 장바구니 상품 확인
	@Override
	public int countCart(String product_No, String m_Id) {
		// TODO Auto-generated method stub
		return 0;
	}
	//7. 장바구니 수량 변경
	@Override
	public void updateCart(CartDTO cartDto) {
		// TODO Auto-generated method stub
		
	}

}
