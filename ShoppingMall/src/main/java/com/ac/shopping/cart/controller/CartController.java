package com.ac.shopping.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ac.shopping.cart.dto.CartDTO;
import com.ac.shopping.cart.service.CartService;
import com.ac.shopping.cart.service.CartServiceImpl;

@Controller
/*@RequestMapping("/Cart/cart/*")*/
public class CartController {
	
	@Inject
	@Autowired
	CartServiceImpl cartService;
	
	//1. 장바구니 추가
	@RequestMapping("/cart_insert.do")
	public String cartInsert(CartDTO cartDto, HttpSession session) {
		String m_Id = (String)session.getAttribute("m_Id");
		cartDto.setM_Id(m_Id);
		
		//장바구니에 기존 상품이 있는지 검사
		int count = cartService.countCart(cartDto.getProduct_No(), m_Id );
		if (count == 0) {
			//장바구니에 아무것도 없으면 insert
			cartService.insert(cartDto);
		}else {
			cartService.updateCart(cartDto);
		}
		return "redirect:/cart/cart_list.do";
	}
	
	//2. 장바구니 목록
	@RequestMapping("/cart_list.do")
	public ModelAndView list(HttpSession session, ModelAndView mav) {
		String m_Id = "hj";
		
//		(String) session.getAttribute("m_Id");
		Map<String, Object> map = new HashMap<String, Object>(); 	
		List<CartDTO> list = cartService.listCart(m_Id);//해당회원의 장바구니 정보
		int sumMoney = cartService.sumMoney(m_Id);//장바구니 전체 금액 호출
		//장바구니 전체 금액에 따라 배송비 구분
		//배송료 : 10만원이상 무료, 미만 2500원
		int deliveryFee = sumMoney >=100000 ? 0 : 1500;
		map.put("list", list);//장바구니 정보를 map에 저장
		map.put("count", list.size()); //장바구니 상품의 유무. 장바구니 리스트의 크기
		map.put("sumMoney", sumMoney);// 장바구니 전체 금액
		map.put("deliveryFee", deliveryFee); //배송비
		map.put("allSum", sumMoney+deliveryFee); //총 결제금액 : 상품금액+배송비
		
		
		
		
		mav.setViewName("Cart/cart");
		mav.addObject("map", map);
		
		return mav;
	}
	

	//3.장바구니 삭제
	@RequestMapping("/cart_delete.do")
	public String delete(@RequestParam String product_No, HttpSession session) {
		System.out.println(product_No);
		
		String m_Id = (String) session.getAttribute("m_Id");
		m_Id = "hj";
		System.out.println(m_Id);
		
		cartService.delete(product_No, m_Id);
		
		
		return "redirect:cart_list.do";
	}
	
	
	
///4. 장바구니 수정
	@RequestMapping("/cart_update.do")
	public String update(@RequestParam int basket_Quantity, @RequestParam String product_No, HttpSession session) {
		//session의 회원 아이디
		String m_Id = (String) session.getAttribute("m_Id");
		
		System.out.println(basket_Quantity);
		System.out.println(product_No);
		
			CartDTO cartDto = new CartDTO();
			cartDto.setM_Id(m_Id);
			cartDto.setBasket_Quantity(basket_Quantity);
			cartDto.setProduct_No(product_No);
			cartService.modifyCart(cartDto);
			
			return "redirect:cart_list.do";
			
	}
	
	@RequestMapping("/boot_cart")
	public String boot_cart() {
		return "cart/boot_Cart";
	}
	
	

}
