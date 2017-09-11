package com.ac.shopping.product.dao;

import java.util.List;

import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

public interface ProductDAO {
	public List<ShoesDTO> listShoes();
	public List<TBADTO> topListProduct();

}