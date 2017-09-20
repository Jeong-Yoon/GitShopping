package com.ac.shopping.product.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.ac.shopping.cart.dto.CartDTO;
import com.ac.shopping.member.dto.MemberDTO;
import com.ac.shopping.product.dao.ProductDAO;
import com.ac.shopping.product.dao.ProductDAOImpl;
import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;
import com.ac.shopping.product.dto.WishListDTO;

@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	ProductDAO productDao;

	// ================TOP=========================
	@Override
	public List<TBADTO> listTba() {
		return productDao.listTba();
	}

	@Override
	public List<TBADTO> topListProduct(int first_value, int second_value, int start, int end, String var) {
		int idf = 1;
		if (var.equals("tshirt")) {
			idf = 2;
		} else if (var.equals("mtmh")) {
			idf = 3;
		} else if (var.equals("blouse")) {
			idf = 4;
		} else if (var.equals("knit")) {
			idf = 5;
		}

		return productDao.topListProduct(first_value, second_value, start, end, idf);
	}

	// ================BOTTOM=========================
	@Override
	public List<TBADTO> bottomListProduct(int first_value, int second_value, int start, int end, String var) {
		int idf = 1;
		if (var.equals("spants")) {
			idf = 2;
		} else if (var.equals("lpants")) {
			idf = 3;
		} else if (var.equals("training")) {
			idf = 4;
		}

		return productDao.bottomListProduct(first_value, second_value, start, end, idf);
	}

	// ================ACC=========================
	@Override
	public List<TBADTO> accListProduct(int first_value, int second_value, int start, int end, String var) {
		int idf = 1;
		if (var.equals("earings")) {
			idf = 2;
		} else if (var.equals("necklaces")) {
			idf = 3;
		} else if (var.equals("bracelets")) {
			idf = 4;
		} else if (var.equals("socks")) {
			idf = 5;
		} else if (var.equals("belts")) {
			idf = 6;
		}
		return productDao.accListProduct(first_value, second_value, start, end, idf);
	}

	// ================ONEPIECE=========================
	@Override
	public List<Outer_OnepieceDTO> onepieceListProduct(int first_value, int second_value, int start, int end) {
		return productDao.onepieceListProduct(first_value, second_value, start, end);
	}

	// ================OUTER=========================
	@Override
	public List<Outer_OnepieceDTO> outerListProduct(int first_value, int second_value, int start, int end) {
		return productDao.outerListProduct(first_value, second_value, start, end);
	}

	// ================SHOES=========================
	@Override
	public List<ShoesDTO> listShoes(int first_value, int second_value, int start, int end) {
		return productDao.listShoes(first_value, second_value, start, end);
	}

	// ================페이징 처리 all count==================
	@Override
	public int all_count_tba(int first_value, int second_value, String var) {

		int idf = 1;
		if (var.equals("tshirt")) {
			idf = 2;
		} else if (var.equals("mtmh")) {
			idf = 3;
		} else if (var.equals("blouse")) {
			idf = 4;
		} else if (var.equals("knit")) {
			idf = 5;
		}

		return productDao.all_count_tba(first_value, second_value, idf);
	}

	@Override
	public int all_count_bottom(int first_value, int second_value, String var) {

		int idf = 1;
		if (var.equals("spants")) {
			idf = 2;
		} else if (var.equals("lpants")) {
			idf = 3;
		} else if (var.equals("training")) {
			idf = 4;
		}

		return productDao.all_count_bottom(first_value, second_value, idf);
	}

	@Override
	public int all_count_acc(int first_value, int second_value, String var) {

		int idf = 1;
		if (var.equals("earings")) {
			idf = 2;
		} else if (var.equals("necklaces")) {
			idf = 3;
		} else if (var.equals("bracelets")) {
			idf = 4;
		} else if (var.equals("socks")) {
			idf = 5;
		} else if (var.equals("belts")) {
			idf = 6;
		}

		return productDao.all_count_acc(first_value, second_value, idf);
	}

	@Override
	public int all_count_onepiece(int first_value, int second_value) {
		return productDao.all_count_onepiece(first_value, second_value);
	}
	
	@Override
	public int all_count_outer(int first_value, int second_value) {
		return productDao.all_count_outer(first_value, second_value);
	}
	
	@Override
	public int all_count_shoes(int first_value, int second_value) {
		return productDao.all_count_shoes(first_value, second_value);
	}

	// ================상세 페이지=========================
	@Override
	public HashMap topDetail(String pro_no) {
		return productDao.topDetail(pro_no);
	}
	
	@Override
	public HashMap bottomDetail(String pro_no) {
		return productDao.bottomDetail(pro_no);
	}

	@Override
	public HashMap accDetail(String pro_no) {
		return productDao.accDetail(pro_no);
	}
	
	@Override
	public HashMap onepieceDetail(String pro_no) {
		return productDao.onepieceDetail(pro_no);
	}

	@Override
	public HashMap outerDetail(String pro_no) {
		return productDao.outerDetail(pro_no);
	}

	@Override
	public HashMap detailshoes(String pro_no) {
		return productDao.detailshoes(pro_no);
	}
	
	
	// =====================WISH/CART=======================
	@Override
	public void addWish(String pro_no, String m_id, int pro_price) {
		productDao.addWish(pro_no, m_id, pro_price);
	}

	@Override
	public boolean wish_chk(String pro_no, String m_id) {
		return productDao.wish_chk(pro_no, m_id);
	}

	@Override
	public boolean cart_Chk(String pro_no, String m_id) {
		return productDao.cart_Chk(pro_no, m_id);
	}

	@Override
	public void addCart2(CartDTO cdto) {
		productDao.addCart2(cdto);
	}

	@Override
	public List<WishListDTO> wishList(String m_id) {
		return productDao.wishList(m_id);
	}

}
