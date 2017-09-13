package com.ac.shopping.product.dao;

import java.util.HashMap;
import java.util.List;

import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

public interface ProductDAO {
	
   public List<ShoesDTO> listShoes();
   public List<TBADTO> listTba();
   
   public HashMap detailshoes(String pro_no);
   public HashMap topDetail(String pro_no);
   public HashMap bottomDetail(String pro_no);
   public HashMap accDetail(String pro_no);
   
   public List<TBADTO> topListProduct(int start, int end, String search_option, String search_keyword, int idf);
   public List<TBADTO> bottomListProduct(int idf);
   public List<TBADTO> accListProduct(int idf);
   public List<Outer_OnepieceDTO> onepieceListProduct();
   public HashMap onepieceDetail(String pro_no);
   
   public List<Outer_OnepieceDTO> outerListProduct();
<<<<<<< HEAD
=======
   public HashMap outerDetail(String pro_no);
>>>>>>> branch 'master' of https://github.com/geunyongkim/GitShopping.git
   
   public int all_count_tba();



}