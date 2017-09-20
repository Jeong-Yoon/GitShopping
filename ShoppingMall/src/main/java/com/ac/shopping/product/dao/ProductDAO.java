package com.ac.shopping.product.dao;

import java.util.HashMap;
import java.util.List;

import com.ac.shopping.cart.dto.CartDTO;
import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;
import com.ac.shopping.product.dto.WishListDTO;

public interface ProductDAO {

	// =================CATEGORY LIST==================
	public List<TBADTO> topListProduct(int first_value, int second_value, int start, int end, int idf);

	public List<TBADTO> bottomListProduct(int first_value, int second_value, int start, int end, int idf);

	public List<TBADTO> accListProduct(int first_value, int second_value, int start, int end, int idf);

	public List<Outer_OnepieceDTO> onepieceListProduct(int first_value, int second_value, int start, int end);

	public List<Outer_OnepieceDTO> outerListProduct(int first_value, int second_value, int start, int end);
	
	public List<ShoesDTO> listShoes(int first_value, int second_value, int start, int end);
	// ===================CATEGORY DETAIL====================
	public HashMap detailshoes(String pro_no);

	public HashMap topDetail(String pro_no);

	public HashMap bottomDetail(String pro_no);

	public HashMap accDetail(String pro_no);
	public HashMap onepieceDetail(String pro_no);
	public HashMap outerDetail(String pro_no);
	// =================페이징 처리 all count===================
	public int all_count_tba(int first_value, int second_value, int idf);

	public int all_count_bottom(int first_value, int second_value, int idf);

	public int all_count_acc(int first_value, int second_value, int idf);

	public int all_count_onepiece(int first_value, int second_value);
	
	public int all_count_outer(int first_value, int second_value);
	public int all_count_shoes(int first_value, int second_value);
	
	// =====================WISH/CART=======================
	public void addWish(String pro_no, String m_id, int pro_price);

	public boolean wish_chk(String pro_no, String m_id);

	public boolean cart_Chk(String pro_no, String m_id);

	public void addCart2(CartDTO cdto);

	public List<WishListDTO> wishList(String m_id);

	public List<TBADTO> listTba();

	

	

	

	

}