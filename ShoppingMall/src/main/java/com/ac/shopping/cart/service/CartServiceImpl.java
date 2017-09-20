package com.ac.shopping.cart.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.ac.shopping.cart.dao.CartDAO;
import com.ac.shopping.cart.dao.CartDAOImpl;
import com.ac.shopping.cart.dto.CartDTO;
import com.ac.shopping.cart.dto.Non_mem_CartDTO;
import com.ac.shopping.cart.dto.Non_mem_OrderDTO;
import com.ac.shopping.cart.dto.OrderDTO;

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
		return cartDao.listCart(m_Id);
	}
	//3. 장바구니 삭제
	@Override
	public void delete(String product_No, String m_Id) {
		cartDao.delete(product_No, m_Id);
	}
	//4. 장바구니 수정
	public void modifyCart(List<String> quantity, List<String> product_no, String m_Id) {
	      cartDao.modifyCartList(quantity,product_no,m_Id);
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
	
	//8.주문하기
	@Override
	public void direct_order(CartDTO cdto, OrderDTO odto) {
		cartDao.direct_order(cdto, odto);
	}
	@Override
	public String order(String m_id, OrderDTO odto) {
		return cartDao.order(m_id, odto);
	}
	
//	public void nonMem_order(HashMap<String, Object> param) {
//		cartDao.nonMem_order(param);
//	}
	
	public String nonMem_order(Non_mem_OrderDTO nmodto, List<Non_mem_CartDTO> plist) {
		return cartDao.nonMem_order(nmodto,plist);		
	}
	public HashMap<String, Object> order_list(HttpSession session, String order_no) {
		return cartDao.order_list(session, order_no);
	}

}
