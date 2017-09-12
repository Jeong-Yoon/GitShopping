package com.ac.shopping.product.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ac.shopping.product.dao.ProductDAOImpl;
import com.ac.shopping.product.dto.Outer_OnepieceDTO;
import com.ac.shopping.product.dto.ShoesDTO;
import com.ac.shopping.product.dto.TBADTO;

@Service
public class ProductServiceImpl implements ProductService {

	@Inject
	ProductDAOImpl productDao;

	public List<ShoesDTO> listShoes() {
		System.out.println("----------------------------1");
		return productDao.listShoes();
	}

	@Override
	public List<TBADTO> topListProduct(int start, int end, String search_option, String search_keyword) {
		return productDao.topListProduct(start,end,search_option,search_keyword);
	}

	@Override
	public List<TBADTO> bottomListProduct() {
		return productDao.bottomListProduct();
	}

	@Override
	public List<TBADTO> accListProduct() {
		return productDao.accListProduct();
	}

	@Override
	public List<Outer_OnepieceDTO> onepieceListProduct() {
		return productDao.onepieceListProduct();
	}

	@Override
	public List<Outer_OnepieceDTO> outerListProduct() {
		return productDao.outerListProduct();
	}

	public int all_count_tba(String search_option, String search_keyword) {
		// TODO Auto-generated method stub
		return productDao.all_count_tba();
	}
}
