package com.ac.shopping.product.dao;

import java.util.List;

import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

public interface ProductDAO {
	
   public List<ShoesDTO> listShoes();
   
   public List<TBADTO> topListProduct(int start, int end, String search_option, String search_keyword, int idf);
   public List<TBADTO> bottomListProduct(int idf);
   public List<TBADTO> accListProduct(int idf);
   
   public List<Outer_OnepieceDTO> onepieceListProduct();
   public List<Outer_OnepieceDTO> outerListProduct();
   public int all_count_tba();


}