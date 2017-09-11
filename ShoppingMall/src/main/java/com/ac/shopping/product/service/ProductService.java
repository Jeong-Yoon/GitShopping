package com.ac.shopping.product.service;

import java.util.List;

import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

public interface ProductService {
   
   public List<ShoesDTO> listShoes();
   
   public List<TBADTO> topListProduct();
}