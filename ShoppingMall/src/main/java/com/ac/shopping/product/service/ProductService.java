package com.ac.shopping.product.service;

import java.util.List;

import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

public interface ProductService {
   
   public List<ShoesDTO> listShoes();
   
   public List<TBADTO> topListProduct();
   public List<TBADTO> bottomListProduct();
   
   public List<Outer_OnepieceDTO> onepieceListProduct();	
   public List<Outer_OnepieceDTO> outerListProduct();
	
}
