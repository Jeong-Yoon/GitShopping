package com.ac.shopping.product.service;

import java.util.HashMap;
import java.util.List;

import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

public interface ProductService {
   
   public List<ShoesDTO> listShoes();
   public HashMap detailshoes(String pro_no);
   
   public List<TBADTO> listTba();
   public HashMap topDetail(String pro_no);
   public HashMap bottomDetail(String pro_no);
   public HashMap accDetail(String pro_no);
   
   public List<TBADTO> topListProduct(int start, int end, String search_option, String search_keyword, String var);
   public List<TBADTO> bottomListProduct(String var);
   public List<TBADTO> accListProduct(String var);
   public List<Outer_OnepieceDTO> onepieceListProduct();	
   public HashMap onepieceDetail(String pro_no);
   
   public List<Outer_OnepieceDTO> outerListProduct();
   public HashMap outerDetail(String pro_no);
   
   public int all_count_tba(String search_option, String search_keyword, String var);
	
}
