package com.ac.shopping.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ac.shopping.cart.dto.CartDTO;
import com.ac.shopping.cart.dto.OrderDTO;
import com.ac.shopping.cart.service.CartService;
import com.ac.shopping.cart.service.CartServiceImpl;

@Controller
public class CartController {

	@Inject
	@Autowired
	CartServiceImpl cartService;

	int nonm_index = 1;

	// 1. 장바구니 추가
	@RequestMapping("/cart_insert.do")
	public String cartInsert(HttpServletResponse response, CartDTO cartDto, HttpSession session,
			HttpServletRequest request) {
		if (request.getParameter("m_id") != null) {
			String m_Id = (String) session.getAttribute("m_Id");
			cartDto.setM_Id(m_Id);

			// 장바구니에 기존 상품이 있는지 검사
			int count = cartService.countCart(cartDto.getProduct_No(), m_Id);
			if (count == 0) {
				// 장바구니에 아무것도 없으면 insert
				cartService.insert(cartDto);
			} else {
				cartService.updateCart(cartDto);
			}
		} else {
			session.setAttribute("nonmemberPro" + nonm_index, cartDto);
			nonm_index++;
		}
		return "redirect:/cart/cart_list.do";
	}

	// 2. 장바구니 목록
	@RequestMapping("/cart_list.do")
	public ModelAndView cart(HttpSession session, ModelAndView mav) {

		String m_Id = (String) session.getAttribute("m_id");
		Map<String, Object> map = new HashMap<String, Object>();
		List<CartDTO> list = cartService.listCart(m_Id);// 해당회원의 장바구니 정보
		int sumMoney = cartService.sumMoney(m_Id);// 장바구니 전체 금액 호출
		// 장바구니 전체 금액에 따라 배송비 구분
		// 배송료 : 10만원이상 무료, 미만 2500원
		int deliveryFee = sumMoney >= 100000 ? 0 : 1500;
		map.put("list", list);// 장바구니 정보를 map에 저장
		map.put("count", list.size()); // 장바구니 상품의 유무. 장바구니 리스트의 크기
		map.put("sumMoney", sumMoney);// 장바구니 전체 금액
		map.put("deliveryFee", deliveryFee); // 배송비
		map.put("allSum", sumMoney + deliveryFee); // 총 결제금액 : 상품금액+배송비

		mav.setViewName("/Cart/cart");

		mav.addObject("map", map);
		return mav;
	}

	// 3.장바구니 삭제
	@RequestMapping("/cart_delete.do")
	public String delete(@RequestParam String product_No, HttpSession session) {
		System.out.println(product_No);

		String m_Id = (String) session.getAttribute("m_Id");
		m_Id = "hj";
		System.out.println(m_Id);

		cartService.delete(product_No, m_Id);

		return "redirect:cart_list.do";
	}

	/// 4. 장바구니 수정
	@RequestMapping("/cart_update.do")
	public String update(@RequestParam(value = "m_basket_q", required = true) List<String> quantity,
			@RequestParam(value = "m_product_no", required = true) List<String> product_no, HttpSession session) {
		String m_Id = (String) session.getAttribute("m_id");
		cartService.modifyCart(quantity, product_no, m_Id);
		return "redirect:cart_list.do";

	}

	@RequestMapping("/non_mem_Cart")
	public String boot_cart() {
		return "Cart/cart";
	}

	// 5. 주문하기
	@RequestMapping("/direct_order")
	public String direct_order(HttpSession session, HttpServletRequest request) {
		CartDTO cdto = new CartDTO();
		OrderDTO odto = new OrderDTO();

		cdto.setM_Id((String) session.getAttribute("m_id"));
		cdto.setProduct_No(request.getParameter("pro_no"));
		cdto.setBasket_Quantity(Integer.parseInt(request.getParameter("quantity")));
		cdto.setPro_color(request.getParameter("pro_color"));
		cdto.setPro_size(request.getParameter("pro_size"));
		cdto.setPro_name(request.getParameter("pro_name"));
		cdto.setPro_price(Integer.parseInt(request.getParameter("allprice")));
		System.out.println(request.getParameter("name"));

		odto.setAddress(request.getParameter("address"));
		odto.setName(request.getParameter("name"));
		odto.setPhone(request.getParameter("phone"));
		odto.setRequest(request.getParameter("request"));

		cartService.direct_order(cdto, odto);
		return "";
	}

	@RequestMapping("/order")
	public String order(HttpSession session, HttpServletRequest request) {
		String m_id = (String) session.getAttribute("m_id");
		OrderDTO odto = new OrderDTO();
		odto.setAddress(request.getParameter("address"));
		odto.setName(request.getParameter("name"));
		odto.setPhone(request.getParameter("phone"));
		odto.setRequest(request.getParameter("request"));
		cartService.order(m_id, odto);
		return "";
	}

}
