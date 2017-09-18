package com.ac.shopping.product.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.ac.shopping.cart.dto.CartDTO;
import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;
import com.ac.shopping.product.dto.WishListDTO;

public interface ProductService {
   
   public List<ShoesDTO> listShoes();
   public HashMap detailshoes(String pro_no);
   
   public List<TBADTO> listTba();
   public HashMap topDetail(String pro_no);
   public HashMap bottomDetail(String pro_no);
   public HashMap accDetail(String pro_no);
   
   public List<TBADTO> topListProduct(int first_value,int second_value, int start, int end, String var);
   public List<TBADTO> bottomListProduct(int first_value, int second_value, int start, int end, String var);
   public List<TBADTO> accListProduct(String var);
   public List<Outer_OnepieceDTO> onepieceListProduct();	
   public HashMap onepieceDetail(String pro_no);
   
   public List<Outer_OnepieceDTO> outerListProduct();
   public HashMap outerDetail(String pro_no);
   
   public int all_count_tba(int first_value, int second_value, String var);
   public int all_count_bottom(int first_value, int second_value, String var);
   public void addWish(String pro_no, String m_id, int pro_price);
   public boolean wish_chk(String pro_no, String m_id);
   
   public boolean cart_Chk(String pro_no, String m_id);
   public void addCart2(CartDTO cdto);
   public List<WishListDTO> wishList(String m_id);
    
}

